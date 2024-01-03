import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pbgrpc.dart';

@singleton
class AuthRepository {
  final AuthServiceClient _authServiceClient;

  AuthRepository(ClientChannel channel)
      : _authServiceClient = AuthServiceClient(channel);

  Future<Credentials> login(LoginRequest request) async {
    return await _authServiceClient.login(request);
  }

  Future<Credentials> register(RegisterRequest request) async {
    return await _authServiceClient.register(request);
  }
}
