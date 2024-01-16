import 'dart:async';
import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/features/auth/data/auth_storage.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pbgrpc.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

/// Manages the authentication state of the app
///
/// This class is responsible for managing the authentication state of the app.
/// [status] should be not be used directly. Instead, use the [AuthCubit] to
/// listen to changes in the authentication state.
@singleton
class AuthRepository {
  final AuthServiceClient _authServiceClient;
  final AuthStorage _authStorage;

  final _controller = StreamController<AuthStatus>();

  Stream<AuthStatus> get status async* {
    yield AuthStatus.unknown;
    final refreshToken = _authStorage.refreshToken;
    if (refreshToken != null) {
      refresh(refreshToken);
    }
    yield* _controller.stream;
  }

  AuthRepository(
      {required ClientChannel channel,
      required AuthStorage authStorage,
      required LoggerInterceptor loggerInterceptor})
      : _authServiceClient = AuthServiceClient(
          channel,
          interceptors: [
            loggerInterceptor,
          ],
        ),
        _authStorage = authStorage;

  Future<void> login(LoginRequest request) async {
    try {
      final credentials = await _authServiceClient.login(request);
      await _authStorage.saveCredentials(credentials);
      _controller.add(AuthStatus.authenticated);
    } catch (e) {
      _controller.add(AuthStatus.unauthenticated);
      rethrow;
    }
  }

  Future<void> register(RegisterRequest request) async {
    try {
      final credentials = await _authServiceClient.register(request);
      await _authStorage.saveCredentials(credentials);
      _controller.add(AuthStatus.authenticated);
    } catch (e) {
      _controller.add(AuthStatus.unauthenticated);
      rethrow;
    }
  }

  Future<void> refresh(String refreshToken) async {
    try {
      final credentials = await _authServiceClient
          .refresh(RefreshTokenRequest(refreshToken: refreshToken));
      await _authStorage.saveCredentials(credentials);
      _controller.add(AuthStatus.authenticated);
    } catch (e) {
      log("Error refreshing token ${e.toString()}");
      await _authStorage.deleteCredentials();
      _controller.add(AuthStatus.unauthenticated);
    }
  }

  Future<void> logout() async {
    await _authStorage.deleteCredentials();
    _controller.add(AuthStatus.unauthenticated);
  }
}
