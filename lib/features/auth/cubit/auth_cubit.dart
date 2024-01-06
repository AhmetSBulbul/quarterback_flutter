import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> with ChangeNotifier {
  AuthCubit() : super(AuthInitial());

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(const AuthAuthenticated('123'));
    notifyListeners();
  }

  Future<void> logout() async {
    emit(AuthUnauthenticated());
    notifyListeners();
  }
}
