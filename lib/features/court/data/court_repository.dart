import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/generated/protos/courtpb.pbgrpc.dart';

@lazySingleton
class CourtRepository {
  CourtRepository(ClientChannel channel, LoggerInterceptor loggerInterceptor,
      AuthInterceptor authInterceptor)
      : _courtServiceClient = CourtServiceClient(channel,
            interceptors: [loggerInterceptor, authInterceptor]);

  final CourtServiceClient _courtServiceClient;

  Future<List<Court>> listCourt() async {
    try {
      final response =
          await _courtServiceClient.searchCourt(SearchCourtRequest());
      return response.courts;
    } catch (e) {
      rethrow;
    }
  }
}
