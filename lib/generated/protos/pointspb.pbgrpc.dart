//
//  Generated code. Do not modify.
//  source: pointspb.proto
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

import 'pointspb.pb.dart' as $9;

export 'pointspb.pb.dart';

@$pb.GrpcServiceName('points.PointsService')
class PointsServiceClient extends $grpc.Client {
  static final _$getPointsByDistrict = $grpc.ClientMethod<$9.QueryByDistrict, $9.PointsByDistrict>(
      '/points.PointsService/GetPointsByDistrict',
      ($9.QueryByDistrict value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.PointsByDistrict.fromBuffer(value));
  static final _$getUserStats = $grpc.ClientMethod<$9.QueryByUser, $9.UserStats>(
      '/points.PointsService/GetUserStats',
      ($9.QueryByUser value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UserStats.fromBuffer(value));

  PointsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.PointsByDistrict> getPointsByDistrict($9.QueryByDistrict request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPointsByDistrict, request, options: options);
  }

  $grpc.ResponseFuture<$9.UserStats> getUserStats($9.QueryByUser request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserStats, request, options: options);
  }
}

@$pb.GrpcServiceName('points.PointsService')
abstract class PointsServiceBase extends $grpc.Service {
  $core.String get $name => 'points.PointsService';

  PointsServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.QueryByDistrict, $9.PointsByDistrict>(
        'GetPointsByDistrict',
        getPointsByDistrict_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.QueryByDistrict.fromBuffer(value),
        ($9.PointsByDistrict value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.QueryByUser, $9.UserStats>(
        'GetUserStats',
        getUserStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.QueryByUser.fromBuffer(value),
        ($9.UserStats value) => value.writeToBuffer()));
  }

  $async.Future<$9.PointsByDistrict> getPointsByDistrict_Pre($grpc.ServiceCall call, $async.Future<$9.QueryByDistrict> request) async {
    return getPointsByDistrict(call, await request);
  }

  $async.Future<$9.UserStats> getUserStats_Pre($grpc.ServiceCall call, $async.Future<$9.QueryByUser> request) async {
    return getUserStats(call, await request);
  }

  $async.Future<$9.PointsByDistrict> getPointsByDistrict($grpc.ServiceCall call, $9.QueryByDistrict request);
  $async.Future<$9.UserStats> getUserStats($grpc.ServiceCall call, $9.QueryByUser request);
}
