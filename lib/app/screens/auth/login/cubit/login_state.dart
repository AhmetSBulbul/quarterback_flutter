part of 'login_cubit.dart';

class LoginState extends Equatable with FormzMixin {
  LoginState({
    this.email = const EmailInput.pure(),
    this.password = const PasswordInput.pure(),
    this.isObscurePassword = true,
  });

  final EmailInput email;
  final PasswordInput password;
  final bool isObscurePassword;

  @override
  List<FormzInput> get inputs => [email, password];

  @override
  List<Object> get props => [email, password, isObscurePassword];

  LoginState copyWith({
    EmailInput? email,
    PasswordInput? password,
    bool? isObscurePassword,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isObscurePassword: isObscurePassword ?? this.isObscurePassword,
    );
  }
}
