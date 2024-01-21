import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/core/usecase/list_usecase.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pbgrpc.dart';

@lazySingleton
class UserListUseCase extends ListUseCase<User> {
  final UserRepository _repository;

  UserListUseCase(UserRepository repository) : _repository = repository;

  @override
  Future<ListUseCaseResponse<User>> call(ListUseCaseParams params) async {
    try {
      final response = await _repository.listUsers(
        UserSearchRequest(
          query: params.query,
          pagination: params.paginationRequest,
        ),
      );
      return ListUseCaseResponse<User>(
        items: response.user,
        totalCount: response.pagination.total,
      );
    } catch (e) {
      rethrow;
    }
  }
}

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

  Future<UserListResponse> listUsers(UserSearchRequest request) async {
    try {
      final response = await _userServiceClient.searchUsers(request);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<User> uploadAvatar(UpdateAvatarRequest request) async {
    try {
      final response = await _userServiceClient.uploadAvatar(request);
      return response.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<User> updateProfile(UserUpdateRequest request) async {
    try {
      final response = await _userServiceClient.updateUser(request);
      return response.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> toggleFollow(int id) async {
    try {
      final response = await _userServiceClient.toggleFollow(
        GetByIdRequest(id: id),
      );
      return response.isFollowing;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> toggleBlock(int id) async {
    try {
      final response = await _userServiceClient.toggleBlock(
        GetByIdRequest(id: id),
      );
      return response.isBlocked;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<User>> getFollowers(int id) async {
    try {
      final response = await _userServiceClient.getFollowers(
        GetByIdPaginatedRequest(id: id),
      );
      return response.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<User>> getFollowings(int id) async {
    try {
      final response = await _userServiceClient.getFollowing(
        GetByIdPaginatedRequest(id: id),
      );
      return response.user;
    } catch (e) {
      rethrow;
    }
  }
}
