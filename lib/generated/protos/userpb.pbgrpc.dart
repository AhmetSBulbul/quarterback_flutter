//
//  Generated code. Do not modify.
//  source: userpb.proto
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
import 'userpb.pb.dart' as $3;

export 'userpb.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getMe = $grpc.ClientMethod<$1.Empty, $3.UserResponse>(
      '/user.UserService/GetMe',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UserResponse.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$1.GetByIdRequest, $3.UserResponse>(
      '/user.UserService/GetUser',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UserResponse.fromBuffer(value));
  static final _$searchUsers = $grpc.ClientMethod<$3.UserSearchRequest, $3.UserListResponse>(
      '/user.UserService/SearchUsers',
      ($3.UserSearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UserListResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$3.UserUpdateRequest, $3.UserResponse>(
      '/user.UserService/UpdateUser',
      ($3.UserUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UserResponse.fromBuffer(value));
  static final _$uploadAvatar = $grpc.ClientMethod<$1.File, $3.UserResponse>(
      '/user.UserService/UploadAvatar',
      ($1.File value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UserResponse.fromBuffer(value));
  static final _$toggleFollow = $grpc.ClientMethod<$1.GetByIdRequest, $3.FollowResponse>(
      '/user.UserService/ToggleFollow',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FollowResponse.fromBuffer(value));
  static final _$toggleBlock = $grpc.ClientMethod<$1.GetByIdRequest, $3.FollowResponse>(
      '/user.UserService/ToggleBlock',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FollowResponse.fromBuffer(value));
  static final _$addComment = $grpc.ClientMethod<$1.CommentRequest, $1.CommentResponse>(
      '/user.UserService/AddComment',
      ($1.CommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommentResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.UserResponse> getMe($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMe, request, options: options);
  }

  $grpc.ResponseFuture<$3.UserResponse> getUser($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$3.UserListResponse> searchUsers($3.UserSearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchUsers, request, options: options);
  }

  $grpc.ResponseFuture<$3.UserResponse> updateUser($3.UserUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$3.UserResponse> uploadAvatar($1.File request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadAvatar, request, options: options);
  }

  $grpc.ResponseFuture<$3.FollowResponse> toggleFollow($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleFollow, request, options: options);
  }

  $grpc.ResponseFuture<$3.FollowResponse> toggleBlock($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleBlock, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommentResponse> addComment($1.CommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addComment, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $3.UserResponse>(
        'GetMe',
        getMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($3.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $3.UserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($3.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UserSearchRequest, $3.UserListResponse>(
        'SearchUsers',
        searchUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UserSearchRequest.fromBuffer(value),
        ($3.UserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UserUpdateRequest, $3.UserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UserUpdateRequest.fromBuffer(value),
        ($3.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File, $3.UserResponse>(
        'UploadAvatar',
        uploadAvatar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File.fromBuffer(value),
        ($3.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $3.FollowResponse>(
        'ToggleFollow',
        toggleFollow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($3.FollowResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $3.FollowResponse>(
        'ToggleBlock',
        toggleBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($3.FollowResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CommentRequest, $1.CommentResponse>(
        'AddComment',
        addComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CommentRequest.fromBuffer(value),
        ($1.CommentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.UserResponse> getMe_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getMe(call, await request);
  }

  $async.Future<$3.UserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$3.UserListResponse> searchUsers_Pre($grpc.ServiceCall call, $async.Future<$3.UserSearchRequest> request) async {
    return searchUsers(call, await request);
  }

  $async.Future<$3.UserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$3.UserUpdateRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$3.UserResponse> uploadAvatar_Pre($grpc.ServiceCall call, $async.Future<$1.File> request) async {
    return uploadAvatar(call, await request);
  }

  $async.Future<$3.FollowResponse> toggleFollow_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return toggleFollow(call, await request);
  }

  $async.Future<$3.FollowResponse> toggleBlock_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return toggleBlock(call, await request);
  }

  $async.Future<$1.CommentResponse> addComment_Pre($grpc.ServiceCall call, $async.Future<$1.CommentRequest> request) async {
    return addComment(call, await request);
  }

  $async.Future<$3.UserResponse> getMe($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$3.UserResponse> getUser($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$3.UserListResponse> searchUsers($grpc.ServiceCall call, $3.UserSearchRequest request);
  $async.Future<$3.UserResponse> updateUser($grpc.ServiceCall call, $3.UserUpdateRequest request);
  $async.Future<$3.UserResponse> uploadAvatar($grpc.ServiceCall call, $1.File request);
  $async.Future<$3.FollowResponse> toggleFollow($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$3.FollowResponse> toggleBlock($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$1.CommentResponse> addComment($grpc.ServiceCall call, $1.CommentRequest request);
}
