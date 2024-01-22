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

import 'courtpb.pb.dart' as $3;

export 'courtpb.pb.dart';

@$pb.GrpcServiceName('court.CourtService')
class CourtServiceClient extends $grpc.Client {
  static final _$getCourt = $grpc.ClientMethod<$3.GetCourtRequest, $3.CourtResponse>(
      '/court.CourtService/GetCourt',
      ($3.GetCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CourtResponse.fromBuffer(value));
  static final _$listCourtByLocation = $grpc.ClientMethod<$3.ListCourtByLocationRequest, $3.ListCourtResponse>(
      '/court.CourtService/ListCourtByLocation',
      ($3.ListCourtByLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListCourtResponse.fromBuffer(value));
  static final _$searchCourt = $grpc.ClientMethod<$3.SearchCourtRequest, $3.ListCourtResponse>(
      '/court.CourtService/SearchCourt',
      ($3.SearchCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListCourtResponse.fromBuffer(value));
  static final _$createCourt = $grpc.ClientMethod<$3.Court, $3.CourtResponse>(
      '/court.CourtService/CreateCourt',
      ($3.Court value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CourtResponse.fromBuffer(value));

  CourtServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CourtResponse> getCourt($3.GetCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCourt, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListCourtResponse> listCourtByLocation($3.ListCourtByLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCourtByLocation, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListCourtResponse> searchCourt($3.SearchCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchCourt, request, options: options);
  }

  $grpc.ResponseFuture<$3.CourtResponse> createCourt($3.Court request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCourt, request, options: options);
  }
}

@$pb.GrpcServiceName('court.CourtService')
abstract class CourtServiceBase extends $grpc.Service {
  $core.String get $name => 'court.CourtService';

  CourtServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetCourtRequest, $3.CourtResponse>(
        'GetCourt',
        getCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetCourtRequest.fromBuffer(value),
        ($3.CourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListCourtByLocationRequest, $3.ListCourtResponse>(
        'ListCourtByLocation',
        listCourtByLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListCourtByLocationRequest.fromBuffer(value),
        ($3.ListCourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SearchCourtRequest, $3.ListCourtResponse>(
        'SearchCourt',
        searchCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SearchCourtRequest.fromBuffer(value),
        ($3.ListCourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Court, $3.CourtResponse>(
        'CreateCourt',
        createCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Court.fromBuffer(value),
        ($3.CourtResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CourtResponse> getCourt_Pre($grpc.ServiceCall call, $async.Future<$3.GetCourtRequest> request) async {
    return getCourt(call, await request);
  }

  $async.Future<$3.ListCourtResponse> listCourtByLocation_Pre($grpc.ServiceCall call, $async.Future<$3.ListCourtByLocationRequest> request) async {
    return listCourtByLocation(call, await request);
  }

  $async.Future<$3.ListCourtResponse> searchCourt_Pre($grpc.ServiceCall call, $async.Future<$3.SearchCourtRequest> request) async {
    return searchCourt(call, await request);
  }

  $async.Future<$3.CourtResponse> createCourt_Pre($grpc.ServiceCall call, $async.Future<$3.Court> request) async {
    return createCourt(call, await request);
  }

  $async.Future<$3.CourtResponse> getCourt($grpc.ServiceCall call, $3.GetCourtRequest request);
  $async.Future<$3.ListCourtResponse> listCourtByLocation($grpc.ServiceCall call, $3.ListCourtByLocationRequest request);
  $async.Future<$3.ListCourtResponse> searchCourt($grpc.ServiceCall call, $3.SearchCourtRequest request);
  $async.Future<$3.CourtResponse> createCourt($grpc.ServiceCall call, $3.Court request);
}
