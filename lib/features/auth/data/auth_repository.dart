import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pbgrpc.dart';

enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
}

@singleton
class AuthRepository {
  final AuthServiceClient _authServiceClient;

  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    yield AuthenticationStatus.unknown;
    yield* _controller.stream;
  }

  AuthRepository(ClientChannel channel)
      : _authServiceClient = AuthServiceClient(channel);

  Future<void> login(LoginRequest request) async {
    // return await _authServiceClient.login(request);
    try {
      final credentials = await _authServiceClient.login(request);
      _controller.add(AuthenticationStatus.authenticated);
    } catch (e) {
      _controller.add(AuthenticationStatus.unauthenticated);
      rethrow;
    }
  }

  Future<void> register(RegisterRequest request) async {
    // return await _authServiceClient.register(request);
    try {
      final credentials = await _authServiceClient.register(request);
      _controller.add(AuthenticationStatus.authenticated);
      // return credentials;
    } catch (e) {
      _controller.add(AuthenticationStatus.unauthenticated);
      rethrow;
    }
  }

  Future<void> logout() async {
    _controller.add(AuthenticationStatus.unauthenticated);
  }
}
