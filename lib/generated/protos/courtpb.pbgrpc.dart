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

import 'commonpb.pb.dart' as $1;
import 'courtpb.pb.dart' as $5;

export 'courtpb.pb.dart';

@$pb.GrpcServiceName('court.CourtService')
class CourtServiceClient extends $grpc.Client {
  static final _$getCourt = $grpc.ClientMethod<$5.GetCourtRequest, $5.CourtResponse>(
      '/court.CourtService/GetCourt',
      ($5.GetCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CourtResponse.fromBuffer(value));
  static final _$listCourtByLocation = $grpc.ClientMethod<$5.ListCourtByLocationRequest, $5.CourtsWithDistance>(
      '/court.CourtService/ListCourtByLocation',
      ($5.ListCourtByLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CourtsWithDistance.fromBuffer(value));
  static final _$searchCourt = $grpc.ClientMethod<$5.SearchCourtRequest, $5.ListCourtResponse>(
      '/court.CourtService/SearchCourt',
      ($5.SearchCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListCourtResponse.fromBuffer(value));
  static final _$createCourt = $grpc.ClientMethod<$5.Court, $5.CourtResponse>(
      '/court.CourtService/CreateCourt',
      ($5.Court value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CourtResponse.fromBuffer(value));
  static final _$checkInCourt = $grpc.ClientMethod<$1.GetByIdRequest, $5.CheckInCourtResponse>(
      '/court.CourtService/CheckInCourt',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CheckInCourtResponse.fromBuffer(value));
  static final _$addComment = $grpc.ClientMethod<$5.CourtCommentRequest, $5.CourtComment>(
      '/court.CourtService/AddComment',
      ($5.CourtCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CourtComment.fromBuffer(value));
  static final _$listComment = $grpc.ClientMethod<$5.CourtCommentListRequest, $5.CourtCommentListResponse>(
      '/court.CourtService/ListComment',
      ($5.CourtCommentListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CourtCommentListResponse.fromBuffer(value));

  CourtServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CourtResponse> getCourt($5.GetCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCourt, request, options: options);
  }

  $grpc.ResponseFuture<$5.CourtsWithDistance> listCourtByLocation($5.ListCourtByLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCourtByLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListCourtResponse> searchCourt($5.SearchCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchCourt, request, options: options);
  }

  $grpc.ResponseFuture<$5.CourtResponse> createCourt($5.Court request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCourt, request, options: options);
  }

  $grpc.ResponseFuture<$5.CheckInCourtResponse> checkInCourt($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkInCourt, request, options: options);
  }

  $grpc.ResponseFuture<$5.CourtComment> addComment($5.CourtCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addComment, request, options: options);
  }

  $grpc.ResponseFuture<$5.CourtCommentListResponse> listComment($5.CourtCommentListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listComment, request, options: options);
  }
}

@$pb.GrpcServiceName('court.CourtService')
abstract class CourtServiceBase extends $grpc.Service {
  $core.String get $name => 'court.CourtService';

  CourtServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.GetCourtRequest, $5.CourtResponse>(
        'GetCourt',
        getCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetCourtRequest.fromBuffer(value),
        ($5.CourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListCourtByLocationRequest, $5.CourtsWithDistance>(
        'ListCourtByLocation',
        listCourtByLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListCourtByLocationRequest.fromBuffer(value),
        ($5.CourtsWithDistance value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SearchCourtRequest, $5.ListCourtResponse>(
        'SearchCourt',
        searchCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SearchCourtRequest.fromBuffer(value),
        ($5.ListCourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.Court, $5.CourtResponse>(
        'CreateCourt',
        createCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.Court.fromBuffer(value),
        ($5.CourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $5.CheckInCourtResponse>(
        'CheckInCourt',
        checkInCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($5.CheckInCourtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CourtCommentRequest, $5.CourtComment>(
        'AddComment',
        addComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CourtCommentRequest.fromBuffer(value),
        ($5.CourtComment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CourtCommentListRequest, $5.CourtCommentListResponse>(
        'ListComment',
        listComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CourtCommentListRequest.fromBuffer(value),
        ($5.CourtCommentListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CourtResponse> getCourt_Pre($grpc.ServiceCall call, $async.Future<$5.GetCourtRequest> request) async {
    return getCourt(call, await request);
  }

  $async.Future<$5.CourtsWithDistance> listCourtByLocation_Pre($grpc.ServiceCall call, $async.Future<$5.ListCourtByLocationRequest> request) async {
    return listCourtByLocation(call, await request);
  }

  $async.Future<$5.ListCourtResponse> searchCourt_Pre($grpc.ServiceCall call, $async.Future<$5.SearchCourtRequest> request) async {
    return searchCourt(call, await request);
  }

  $async.Future<$5.CourtResponse> createCourt_Pre($grpc.ServiceCall call, $async.Future<$5.Court> request) async {
    return createCourt(call, await request);
  }

  $async.Future<$5.CheckInCourtResponse> checkInCourt_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return checkInCourt(call, await request);
  }

  $async.Future<$5.CourtComment> addComment_Pre($grpc.ServiceCall call, $async.Future<$5.CourtCommentRequest> request) async {
    return addComment(call, await request);
  }

  $async.Future<$5.CourtCommentListResponse> listComment_Pre($grpc.ServiceCall call, $async.Future<$5.CourtCommentListRequest> request) async {
    return listComment(call, await request);
  }

  $async.Future<$5.CourtResponse> getCourt($grpc.ServiceCall call, $5.GetCourtRequest request);
  $async.Future<$5.CourtsWithDistance> listCourtByLocation($grpc.ServiceCall call, $5.ListCourtByLocationRequest request);
  $async.Future<$5.ListCourtResponse> searchCourt($grpc.ServiceCall call, $5.SearchCourtRequest request);
  $async.Future<$5.CourtResponse> createCourt($grpc.ServiceCall call, $5.Court request);
  $async.Future<$5.CheckInCourtResponse> checkInCourt($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$5.CourtComment> addComment($grpc.ServiceCall call, $5.CourtCommentRequest request);
  $async.Future<$5.CourtCommentListResponse> listComment($grpc.ServiceCall call, $5.CourtCommentListRequest request);
}
