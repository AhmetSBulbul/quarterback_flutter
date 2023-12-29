//
//  Generated code. Do not modify.
//  source: courtpb.proto
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

import 'courtpb.pb.dart' as $2;

export 'courtpb.pb.dart';

@$pb.GrpcServiceName('court.CourtService')
class CourtServiceClient extends $grpc.Client {
  static final _$getCourt = $grpc.ClientMethod<$2.GetCourtRequest, $2.CourtResponse>(
      '/court.CourtService/GetCourt',
      ($2.GetCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CourtResponse.fromBuffer(value));
  static final _$listCourtByLocation = $grpc.ClientMethod<$2.ListCourtByLocationRequest, $2.ListCourtResponse>(
      '/court.CourtService/ListCourtByLocation',
      ($2.ListCourtByLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListCourtResponse.fromBuffer(value));
  static final _$searchCourt = $grpc.ClientMethod<$2.SearchCourtRequest, $2.ListCourtResponse>(
      '/court.CourtService/SearchCourt',
      ($2.SearchCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListCourtResponse.fromBuffer(value));

  CourtServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CourtResponse> getCourt($2.GetCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCourt, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListCourtResponse> listCourtByLocation($2.ListCourtByLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCourtByLocation, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListCourtResponse> searchCourt($2.SearchCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchCourt, request, options: options);
  }
}

@$pb.GrpcServiceName('court.CourtService')
abstract class CourtServiceBase extends $grpc.Service {
  $core.String get $name => 'court.CourtService';

  CourtServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetCourtRequest, $2.CourtResponse>(
        'GetCourt',
        getCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetCourtRequest.fromBuffer(value),
        ($2.CourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListCourtByLocationRequest, $2.ListCourtResponse>(
        'ListCourtByLocation',
        listCourtByLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListCourtByLocationRequest.fromBuffer(value),
        ($2.ListCourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SearchCourtRequest, $2.ListCourtResponse>(
        'SearchCourt',
        searchCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SearchCourtRequest.fromBuffer(value),
        ($2.ListCourtResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CourtResponse> getCourt_Pre($grpc.ServiceCall call, $async.Future<$2.GetCourtRequest> request) async {
    return getCourt(call, await request);
  }

  $async.Future<$2.ListCourtResponse> listCourtByLocation_Pre($grpc.ServiceCall call, $async.Future<$2.ListCourtByLocationRequest> request) async {
    return listCourtByLocation(call, await request);
  }

  $async.Future<$2.ListCourtResponse> searchCourt_Pre($grpc.ServiceCall call, $async.Future<$2.SearchCourtRequest> request) async {
    return searchCourt(call, await request);
  }

  $async.Future<$2.CourtResponse> getCourt($grpc.ServiceCall call, $2.GetCourtRequest request);
  $async.Future<$2.ListCourtResponse> listCourtByLocation($grpc.ServiceCall call, $2.ListCourtByLocationRequest request);
  $async.Future<$2.ListCourtResponse> searchCourt($grpc.ServiceCall call, $2.SearchCourtRequest request);
}
