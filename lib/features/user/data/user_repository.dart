import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pbgrpc.dart';

@singleton
class UserRepository {
  UserRepository(
    ClientChannel channel,
    LoggerInterceptor loggerInterceptor,
    AuthInterceptor authInterceptor,
  ) : _userServiceClient = UserServiceClient(
          channel,
          interceptors: [
            loggerInterceptor,
            authInterceptor,
          ],
        );

  final UserServiceClient _userServiceClient;

  Future<User> getMe() async {
    try {
      final response = await _userServiceClient.getMe(Empty());
      return response.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<User> getUser(int id) async {
    try {
      final response = await _userServiceClient.getUser(GetByIdRequest(id: id));
      return response.user;
    } catch (e) {
      rethrow;
    }
  }
}
