import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pbgrpc.dart';

@lazySingleton
class RegionRepository {
  final RegionServiceClient _regionServiceClient;

  RegionRepository(ClientChannel channel)
      : _regionServiceClient = RegionServiceClient(channel);

  Future<CountryListResponse> listCountry() async {
    return await _regionServiceClient.listCountry(Empty());
  }

  // city
  Future<CityListResponse> listCity(GetByIdRequest request) async {
    return await _regionServiceClient.listCity(request);
  }

  // district
  Future<DistrictListResponse> listDistrict(GetByIdRequest request) async {
    return await _regionServiceClient.listDistrict(request);
  }
}
