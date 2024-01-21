import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:quarterback_flutter/core/formatters/inputs.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit({EditProfileState? initialState})
      : super(initialState ?? EditProfileState());

  void nameChanged(String value) {
    print(value);
    emit(state.copyWith(name: NameInput.dirty(value)));
  }

  void lastNameChanged(String value) {
    emit(state.copyWith(lastName: LastNameInput.dirty(value)));
  }

  void districtChanged(int value) {
    emit(state.copyWith(district: DistrictInput.dirty(value)));
  }
}
