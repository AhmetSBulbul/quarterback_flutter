import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:quarterback_flutter/core/formatters/inputs.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  void emailChanged(String value) {
    emit(state.copyWith(email: EmailInput.dirty(value)));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: PasswordInput.dirty(value)));
  }

  void toggleObscurePassword() {
    emit(state.copyWith(isObscurePassword: !state.isObscurePassword));
  }
}
