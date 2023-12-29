import 'package:quarterback_flutter/generated/protos/authpb.pbgrpc.dart';

class AuthRepository {
  final AuthServiceClient _authServiceClient;

  AuthRepository({required AuthServiceClient authServiceClient})
      : _authServiceClient = authServiceClient;

  Future<Credentials> login(LoginRequest request) async {
    return await _authServiceClient.login(request);
  }

  Future<Credentials> register(RegisterRequest request) async {
    return await _authServiceClient.register(request);
  }
}
