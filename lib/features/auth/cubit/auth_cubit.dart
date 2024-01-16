import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
// ignore: unnecessary_import
import 'package:meta/meta.dart';
import 'package:quarterback_flutter/features/auth/data/auth_repository.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pb.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> with ChangeNotifier {
  AuthCubit({required AuthRepository repository})
      : _repository = repository,
        super(AuthInitial()) {
    _repository.status.listen(_onAuthStatusChanged);
  }

  final AuthRepository _repository;

  Future<void> login(LoginRequest req) async {
    return await _repository.login(req);
  }

  Future<void> logout() async {
    return await _repository.logout();
  }

  Future<void> register(RegisterRequest req) async {
    return await _repository.register(req);
  }

  Future<void> _onAuthStatusChanged(AuthStatus status) async {
    switch (status) {
      case AuthStatus.unknown:
        emit(AuthInitial());
        break;
      case AuthStatus.unauthenticated:
        emit(AuthUnauthenticated());
        break;
      case AuthStatus.authenticated:
        emit(AuthAuthenticated());
        break;
    }
    notifyListeners();
  }
}
