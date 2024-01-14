import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:quarterback_flutter/core/formatters/inputs.dart';

part 'register_state.dart';

// Manages the state of the Register Screen and validates the inputs.
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState());

  void emailChanged(String value) {
    emit(state.copyWith(email: EmailInput.dirty(value)));
  }

  void usernameChanged(String value) {
    emit(state.copyWith(username: UsernameInput.dirty(value)));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: PasswordInput.dirty(value)));
  }

  void nameChanged(String value) {
    emit(state.copyWith(name: NameInput.dirty(value)));
  }

  void lastNameChanged(String value) {
    emit(state.copyWith(lastName: LastNameInput.dirty(value)));
  }

  void districtChanged(int value) {
    emit(state.copyWith(district: DistrictInput.dirty(value)));
  }
}
