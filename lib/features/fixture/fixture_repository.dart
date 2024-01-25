import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/generated/protos/pointspb.pbgrpc.dart';

@lazySingleton
class FixtureRepository {
  FixtureRepository(
      {required ClientChannel channel,
      required LoggerInterceptor loggerInterceptor,
      required AuthInterceptor authInterceptor})
      : _pointsServiceClient = PointsServiceClient(channel,
            interceptors: [loggerInterceptor, authInterceptor]);

  final PointsServiceClient _pointsServiceClient;

  Future<PointsByDistrict> getFixtureByDistrict(int districtId) async {
    return await _pointsServiceClient
        .getPointsByDistrict(QueryByDistrict(districtID: districtId));
  }

  Future<UserStats> getUserStats(int userId) async {
    return await _pointsServiceClient
        .getUserStats(QueryByUser(playerID: userId));
  }
}
