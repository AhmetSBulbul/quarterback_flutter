import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/core/usecase/list_usecase.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/courtpb.pbgrpc.dart';

/// must be called with query that has districtId
///
/// district id will be used as court id
@lazySingleton
class CourtCommentListUseCase extends ListUseCase<CourtComment> {
  final CourtRepository _repository;

  CourtCommentListUseCase(CourtRepository repository)
      : _repository = repository;

  @override
  Future<ListUseCaseResponse<CourtComment>> call(
      ListUseCaseParams params) async {
    try {
      final response = await _repository.listComments(params.query.districtId);
      return ListUseCaseResponse<CourtComment>(
        items: response,
        totalCount: response.length,
      );
    } catch (e) {
      rethrow;
    }
  }
}

@lazySingleton
class CourtListUseCase extends ListUseCase<Court> {
  final CourtRepository _repository;

  CourtListUseCase(CourtRepository repository) : _repository = repository;

  @override
  Future<ListUseCaseResponse<Court>> call(ListUseCaseParams params) async {
    try {
      // TODO: there is no filter for court yet
      final response = await _repository.listCourts();
      return ListUseCaseResponse<Court>(
        items: response,
        totalCount: response.length,
      );
    } catch (e) {
      rethrow;
    }
  }
}

@lazySingleton
class CourtRepository {
  CourtRepository(ClientChannel channel, LoggerInterceptor loggerInterceptor,
      AuthInterceptor authInterceptor)
      : _courtServiceClient = CourtServiceClient(channel,
            interceptors: [loggerInterceptor, authInterceptor]);

  final CourtServiceClient _courtServiceClient;

  Future<Court> getCourt(int id) async {
    // Will throw an error if not found?
    return (await _courtServiceClient.getCourt(GetCourtRequest(id: id))).court;
  }

  Future<CourtsWithDistance> listCourtsByLocation(
      ListCourtByLocationRequest request) {
    return _courtServiceClient.listCourtByLocation(request);
  }

  Future<List<Court>> listCourts() async {
    try {
      final response =
          await _courtServiceClient.searchCourt(SearchCourtRequest());
      return response.courts;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> checkIn(int courtId) async {
    try {
      final response = await _courtServiceClient.checkInCourt(GetByIdRequest(
        id: courtId,
      ));
      return response.checkedIn;
    } catch (e) {
      rethrow;
    }
  }

  Future<CourtComment> addComment(int courtId, String content) async {
    return await _courtServiceClient
        .addComment(CourtCommentRequest(courtId: courtId, content: content));
  }

  Future<List<CourtComment>> listComments(int courtId) async {
    try {
      final response = await _courtServiceClient
          .listComment(CourtCommentListRequest(courtId: courtId));
      return response.comments;
    } catch (e) {
      rethrow;
    }
  }
}
