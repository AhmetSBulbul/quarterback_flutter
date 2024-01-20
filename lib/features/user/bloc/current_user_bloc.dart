import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/features/user/current_user.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pbgrpc.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  CurrentUserBloc(
      {required UserRepository userRepository,
      required RegionRepository regionRepository})
      : _userRepository = userRepository,
        _regionRepository = regionRepository,
        super(CurrentUserInitial()) {
    on<CurrentUserRequested>(_onCurrentUserRequested);
  }

  final UserRepository _userRepository;
  final RegionRepository _regionRepository;

  Future<void> _onCurrentUserRequested(
      CurrentUserRequested event, Emitter<CurrentUserState> emit) async {
    try {
      final resp = await _userRepository.getMe();
      final regionResp = await _regionRepository
          .getRegion(GetByIdRequest(id: resp.districtID));

      final user = CurrentUser(
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
      emit(CurrentUserLoaded(user: user));
    } catch (e) {
      emit(CurrentUserError(
          cause: 'Error happened on Current User Requested', error: e));
    }
  }
}
