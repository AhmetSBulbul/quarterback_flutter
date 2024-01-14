import 'package:formz/formz.dart';

enum EmailInputError {
  empty("Email can't be empty"),
  invalid("Email is invalid");

  final String message;

  const EmailInputError(this.message);
}

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  EmailInputError? validator(String value) {
    if (value.isEmpty) {
      return EmailInputError.empty;
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return EmailInputError.invalid;
    }
    return null;
  }
}

enum UsernameInputError { empty, invalid }

class UsernameInput extends FormzInput<String, UsernameInputError> {
  const UsernameInput.pure() : super.pure('');

  const UsernameInput.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameInputError? validator(String value) {
    if (value.isEmpty) {
      return UsernameInputError.empty;
    } else if (!RegExp(r'^[a-zA-Z0-9_]{3,16}$').hasMatch(value)) {
      return UsernameInputError.invalid;
    }
    return null;
  }
}

enum PasswordInputError { empty, invalid }

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.isEmpty) {
      return PasswordInputError.empty;
    } else if (!RegExp(r'^[a-zA-Z0-9_]{8,18}$').hasMatch(value)) {
      return PasswordInputError.invalid;
    }
    return null;
  }
}

enum NameInputError { empty }

class NameInput extends FormzInput<String, NameInputError> {
  const NameInput.pure() : super.pure('');

  const NameInput.dirty([String value = '']) : super.dirty(value);

  @override
  NameInputError? validator(String value) {
    if (value.isEmpty) {
      return NameInputError.empty;
    }
    return null;
  }
}

enum LastNameInputError { empty }

class LastNameInput extends FormzInput<String, LastNameInputError> {
  const LastNameInput.pure() : super.pure('');

  const LastNameInput.dirty([String value = '']) : super.dirty(value);

  @override
  LastNameInputError? validator(String value) {
    if (value.isEmpty) {
      return LastNameInputError.empty;
    }
    return null;
  }
}

enum DistrictInputError { empty }

class DistrictInput extends FormzInput<int, DistrictInputError> {
  const DistrictInput.pure() : super.pure(-1);

  const DistrictInput.dirty([int value = -1]) : super.dirty(value);

  @override
  DistrictInputError? validator(int value) {
    if (value == -1) {
      return DistrictInputError.empty;
    }
    return null;
  }
}
