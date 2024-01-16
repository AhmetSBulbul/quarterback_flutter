import 'package:formz/formz.dart';

enum InputError {
  empty("Field can't be empty"),
  invalid("Field is invalid");

  final String message;

  const InputError(this.message);
}

class EmailInput extends FormzInput<String, InputError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  InputError? validator(String value) {
    if (value.isEmpty) {
      return InputError.empty;
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return InputError.invalid;
    }
    return null;
  }
}

class UsernameInput extends FormzInput<String, InputError> {
  const UsernameInput.pure() : super.pure('');

  const UsernameInput.dirty([String value = '']) : super.dirty(value);

  @override
  InputError? validator(String value) {
    if (value.isEmpty) {
      return InputError.empty;
    } else if (!RegExp(r'^[a-zA-Z0-9_]{3,16}$').hasMatch(value)) {
      return InputError.invalid;
    }
    return null;
  }
}

class PasswordInput extends FormzInput<String, InputError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty([String value = '']) : super.dirty(value);

  @override
  InputError? validator(String value) {
    if (value.isEmpty) {
      return InputError.empty;
    } else if (!RegExp(r'^[a-zA-Z0-9_]{8,18}$').hasMatch(value)) {
      return InputError.invalid;
    }
    return null;
  }
}

class NameInput extends FormzInput<String, InputError> {
  const NameInput.pure() : super.pure('');

  const NameInput.dirty([String value = '']) : super.dirty(value);

  @override
  InputError? validator(String value) {
    if (value.isEmpty) {
      return InputError.empty;
    }
    return null;
  }
}

class LastNameInput extends FormzInput<String, InputError> {
  const LastNameInput.pure() : super.pure('');

  const LastNameInput.dirty([String value = '']) : super.dirty(value);

  @override
  InputError? validator(String value) {
    if (value.isEmpty) {
      return InputError.empty;
    }
    return null;
  }
}

class DistrictInput extends FormzInput<int, InputError> {
  const DistrictInput.pure() : super.pure(-1);

  const DistrictInput.dirty([int value = -1]) : super.dirty(value);

  @override
  InputError? validator(int value) {
    if (value == -1) {
      return InputError.empty;
    }
    return null;
  }
}
