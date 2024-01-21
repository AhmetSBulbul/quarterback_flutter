import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/features/user/current_user.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pbgrpc.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserCubit extends Cubit<CurrentUserState> {
  CurrentUserCubit(
      {required UserRepository userRepository,
      required RegionRepository regionRepository})
      : _userRepository = userRepository,
        _regionRepository = regionRepository,
        super(CurrentUserInitial()) {
    // on<CurrentUserRequested>(_onCurrentUserRequested);
    // on<CurrentUserAvatarUpdated>(_onCurrentUserAvatarUpdated);
    // on<CurrentUserUpdateRequested>(_onCurrentUserUpdateRequested);
  }

  final UserRepository _userRepository;
  final RegionRepository _regionRepository;

  Future<void> requestCurrentUser() async {
    try {
      final resp = await _userRepository.getMe();
      final regionResp = await _regionRepository
          .getRegion(GetByIdRequest(id: resp.districtID));
      final followers = await _userRepository.getFollowers(resp.id);
      final followings = await _userRepository.getFollowings(resp.id);

      // if (resp.avatarPath.isNotEmpty) {
      //   final filePath = await locator<MediaRepository>()
      //       .getFile(int.parse(resp.avatarPath));
      //   resp.avatarPath = filePath.path;
      // }

      final user = Player(
        id: resp.id,
        email: resp.email,
        username: resp.username,
        name: resp.name,
        lastName: resp.lastname,
        avatarPath: resp.avatarPath,
        city: regionResp.city,
        country: regionResp.country,
        district: regionResp.district,
      );
      emit(CurrentUserLoaded(
          user: user, followers: followers, following: followings));
    } catch (e) {
      emit(CurrentUserError(
          cause: 'Error happened on Current User Requested', error: e));
    }
  }

  Future<void> updateAvatar(UpdateAvatarRequest request) async {
    if (state is CurrentUserLoaded) {
      try {
        final resp = await _userRepository.uploadAvatar(request);
        // final filePath = await locator<MediaRepository>()
        //     .getFile(event.request.avatarFileId);
        final user = (state as CurrentUserLoaded).user.copyWith(
              avatarPath: resp.avatarPath,
            );
        emit(CurrentUserLoaded(
            user: user,
            followers: (state as CurrentUserLoaded).followers,
            following: (state as CurrentUserLoaded).following));
      } catch (e) {
        rethrow;
      }
    }
  }

  Future<void> updateUser(UserUpdateRequest request) async {
    if (state is CurrentUserLoaded) {
      try {
        final resp = await _userRepository.updateProfile(request);
        final regionResp = await _regionRepository
            .getRegion(GetByIdRequest(id: resp.districtID));
        final user = (state as CurrentUserLoaded).user.copyWith(
              name: resp.name,
              lastName: resp.lastname,
              city: regionResp.city,
              country: regionResp.country,
              district: regionResp.district,
            );
        emit(CurrentUserLoaded(
            user: user,
            followers: (state as CurrentUserLoaded).followers,
            following: (state as CurrentUserLoaded).following));
      } catch (e) {
        rethrow;
      }
    }
  }

  Future<void> toggleFollow(int id) async {
    if (state is CurrentUserLoaded) {
      try {
        final resp = await _userRepository.toggleFollow(id);
        // TODO: Optimistic Update
        final following = await _userRepository
            .getFollowings((state as CurrentUserLoaded).user.id);

        emit(CurrentUserLoaded(
            user: (state as CurrentUserLoaded).user,
            followers: (state as CurrentUserLoaded).followers,
            following: following));
      } catch (e) {
        rethrow;
      }
    }
  }
}
