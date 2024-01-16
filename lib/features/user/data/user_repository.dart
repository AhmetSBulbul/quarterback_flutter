import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pbgrpc.dart';

@singleton
class UserRepository {
  UserRepository(ClientChannel channel)
      : _userServiceClient = UserServiceClient(channel);

  final UserServiceClient _userServiceClient;

  Future<User> getMe(Credentials credentials) async {
    try {
      final response = await _userServiceClient.getMe(Empty(),
          options: CallOptions(
              metadata: {'Authorization': 'Bearer ${credentials.token}'}));
      return response.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<User> getUser(Credentials credentials, int id) async {
    try {
      final response = await _userServiceClient.getUser(GetByIdRequest(id: id),
          options: CallOptions(
              metadata: {'Authorization': 'Bearer ${credentials.token}'}));
      return response.user;
    } catch (e) {
      rethrow;
    }
  }
}
