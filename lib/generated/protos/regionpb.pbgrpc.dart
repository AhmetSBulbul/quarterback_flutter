//
//  Generated code. Do not modify.
//  source: regionpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'commonpb.pb.dart' as $1;
import 'regionpb.pb.dart' as $7;

export 'regionpb.pb.dart';

@$pb.GrpcServiceName('region.RegionService')
class RegionServiceClient extends $grpc.Client {
  static final _$listCountry = $grpc.ClientMethod<$1.Empty, $7.CountryListResponse>(
      '/region.RegionService/ListCountry',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CountryListResponse.fromBuffer(value));
  static final _$listCity = $grpc.ClientMethod<$1.GetByIdRequest, $7.CityListResponse>(
      '/region.RegionService/ListCity',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CityListResponse.fromBuffer(value));
  static final _$listDistrict = $grpc.ClientMethod<$1.GetByIdRequest, $7.DistrictListResponse>(
      '/region.RegionService/ListDistrict',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DistrictListResponse.fromBuffer(value));
  static final _$getRegionByDistrictId = $grpc.ClientMethod<$1.GetByIdRequest, $7.Region>(
      '/region.RegionService/GetRegionByDistrictId',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.Region.fromBuffer(value));

  RegionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CountryListResponse> listCountry($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCountry, request, options: options);
  }

  $grpc.ResponseFuture<$7.CityListResponse> listCity($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCity, request, options: options);
  }

  $grpc.ResponseFuture<$7.DistrictListResponse> listDistrict($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDistrict, request, options: options);
  }

  $grpc.ResponseFuture<$7.Region> getRegionByDistrictId($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRegionByDistrictId, request, options: options);
  }
}

@$pb.GrpcServiceName('region.RegionService')
abstract class RegionServiceBase extends $grpc.Service {
  $core.String get $name => 'region.RegionService';

  RegionServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $7.CountryListResponse>(
        'ListCountry',
        listCountry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($7.CountryListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $7.CityListResponse>(
        'ListCity',
        listCity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($7.CityListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $7.DistrictListResponse>(
        'ListDistrict',
        listDistrict_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($7.DistrictListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $7.Region>(
        'GetRegionByDistrictId',
        getRegionByDistrictId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($7.Region value) => value.writeToBuffer()));
  }

  $async.Future<$7.CountryListResponse> listCountry_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return listCountry(call, await request);
  }

  $async.Future<$7.CityListResponse> listCity_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return listCity(call, await request);
  }

  $async.Future<$7.DistrictListResponse> listDistrict_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return listDistrict(call, await request);
  }

  $async.Future<$7.Region> getRegionByDistrictId_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return getRegionByDistrictId(call, await request);
  }

  $async.Future<$7.CountryListResponse> listCountry($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$7.CityListResponse> listCity($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$7.DistrictListResponse> listDistrict($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$7.Region> getRegionByDistrictId($grpc.ServiceCall call, $1.GetByIdRequest request);
}
