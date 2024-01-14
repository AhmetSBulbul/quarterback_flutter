// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_cubit.dart';

class RegisterState extends Equatable with FormzMixin {
  RegisterState({
    this.email = const EmailInput.pure(),
    this.username = const UsernameInput.pure(),
    this.password = const PasswordInput.pure(),
    this.name = const NameInput.pure(),
    this.lastName = const LastNameInput.pure(),
    this.district = const DistrictInput.pure(),
  });

  final EmailInput email;
  final UsernameInput username;
  final PasswordInput password;
  final NameInput name;
  final LastNameInput lastName;
  final DistrictInput district;

  @override
  List<FormzInput> get inputs =>
      [email, username, password, name, lastName, district];

  @override
  List<Object> get props =>
      [email, username, password, name, lastName, district];

  RegisterState copyWith({
    EmailInput? email,
    UsernameInput? username,
    PasswordInput? password,
    NameInput? name,
    LastNameInput? lastName,
    DistrictInput? district,
  }) {
    return RegisterState(
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      district: district ?? this.district,
    );
  }
}
