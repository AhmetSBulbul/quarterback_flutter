import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/features/user/current_user.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(
      {required this.id,
      required UserRepository userRepository,
      required RegionRepository regionRepository})
      : _userRepository = userRepository,
        _regionRepository = regionRepository,
        super(ProfileLoading());

  final UserRepository _userRepository;
  final RegionRepository _regionRepository;
  final int id;

  // Can be used for refresh also
  Future<void> getProfile() async {
    try {
      emit(ProfileLoading());
      final resp = await _userRepository.getUser(id);
      final regionResp = await _regionRepository
          .getRegion(GetByIdRequest(id: resp.districtID));

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
      emit(ProfileLoaded(user: user));
    } catch (e) {
      emit(
          ProfileError(cause: 'Error happened on Profile Requested', error: e));
    }
  }

  // Will be different bloc for current user
  // Future<void> toggleFollow() async {
  //   try {
  //     final resp = await _userRepository.toggleFollow(id);
  //     emit(ProfileLoaded(user: resp));
  //   } catch (e) {
  //     emit(ProfileError(cause: 'Error happened on Follow', error: e));
  //   }
  // }

  Future<bool> toggleFollow() async {
    try {
      final resp = await _userRepository.toggleFollow(id);
      return resp;
    } catch (e) {
      emit(ProfileError(cause: 'Error happened on Follow', error: e));
      return false;
    }
  }

  Future<bool> toggleBlock() async {
    try {
      final resp = await _userRepository.toggleBlock(id);
      return resp;
    } catch (e) {
      emit(ProfileError(cause: 'Error happened on Block', error: e));
      return false;
    }
  }
}
