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
import 'userpb.pb.dart' as $5;

export 'userpb.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getMe = $grpc.ClientMethod<$1.Empty, $5.UserResponse>(
      '/user.UserService/GetMe',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserResponse.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$1.GetByIdRequest, $5.UserResponse>(
      '/user.UserService/GetUser',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserResponse.fromBuffer(value));
  static final _$searchUsers = $grpc.ClientMethod<$5.UserSearchRequest, $5.UserListResponse>(
      '/user.UserService/SearchUsers',
      ($5.UserSearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserListResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$5.UserUpdateRequest, $5.UserResponse>(
      '/user.UserService/UpdateUser',
      ($5.UserUpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserResponse.fromBuffer(value));
  static final _$uploadAvatar = $grpc.ClientMethod<$5.UpdateAvatarRequest, $5.UserResponse>(
      '/user.UserService/UploadAvatar',
      ($5.UpdateAvatarRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserResponse.fromBuffer(value));
  static final _$toggleFollow = $grpc.ClientMethod<$1.GetByIdRequest, $5.FollowResponse>(
      '/user.UserService/ToggleFollow',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.FollowResponse.fromBuffer(value));
  static final _$getFollowers = $grpc.ClientMethod<$1.GetByIdPaginatedRequest, $5.UserListResponse>(
      '/user.UserService/GetFollowers',
      ($1.GetByIdPaginatedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserListResponse.fromBuffer(value));
  static final _$getFollowing = $grpc.ClientMethod<$1.GetByIdPaginatedRequest, $5.UserListResponse>(
      '/user.UserService/GetFollowing',
      ($1.GetByIdPaginatedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserListResponse.fromBuffer(value));
  static final _$toggleBlock = $grpc.ClientMethod<$1.GetByIdRequest, $5.BlockResponse>(
      '/user.UserService/ToggleBlock',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.BlockResponse.fromBuffer(value));
  static final _$getBlocked = $grpc.ClientMethod<$1.GetByIdPaginatedRequest, $5.UserListResponse>(
      '/user.UserService/GetBlocked',
      ($1.GetByIdPaginatedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UserListResponse.fromBuffer(value));
  static final _$addComment = $grpc.ClientMethod<$1.CommentRequest, $1.CommentResponse>(
      '/user.UserService/AddComment',
      ($1.CommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommentResponse.fromBuffer(value));
  static final _$getComments = $grpc.ClientMethod<$1.GetByIdPaginatedRequest, $1.CommentsResponse>(
      '/user.UserService/GetComments',
      ($1.GetByIdPaginatedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CommentsResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.UserResponse> getMe($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMe, request, options: options);
  }

  $grpc.ResponseFuture<$5.UserResponse> getUser($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.UserListResponse> searchUsers($5.UserSearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchUsers, request, options: options);
  }

  $grpc.ResponseFuture<$5.UserResponse> updateUser($5.UserUpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.UserResponse> uploadAvatar($5.UpdateAvatarRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadAvatar, request, options: options);
  }

  $grpc.ResponseFuture<$5.FollowResponse> toggleFollow($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleFollow, request, options: options);
  }

  $grpc.ResponseFuture<$5.UserListResponse> getFollowers($1.GetByIdPaginatedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFollowers, request, options: options);
  }

  $grpc.ResponseFuture<$5.UserListResponse> getFollowing($1.GetByIdPaginatedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFollowing, request, options: options);
  }

  $grpc.ResponseFuture<$5.BlockResponse> toggleBlock($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleBlock, request, options: options);
  }

  $grpc.ResponseFuture<$5.UserListResponse> getBlocked($1.GetByIdPaginatedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBlocked, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommentResponse> addComment($1.CommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addComment, request, options: options);
  }

  $grpc.ResponseFuture<$1.CommentsResponse> getComments($1.GetByIdPaginatedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComments, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $5.UserResponse>(
        'GetMe',
        getMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($5.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $5.UserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($5.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSearchRequest, $5.UserListResponse>(
        'SearchUsers',
        searchUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSearchRequest.fromBuffer(value),
        ($5.UserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserUpdateRequest, $5.UserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserUpdateRequest.fromBuffer(value),
        ($5.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateAvatarRequest, $5.UserResponse>(
        'UploadAvatar',
        uploadAvatar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateAvatarRequest.fromBuffer(value),
        ($5.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $5.FollowResponse>(
        'ToggleFollow',
        toggleFollow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($5.FollowResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdPaginatedRequest, $5.UserListResponse>(
        'GetFollowers',
        getFollowers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdPaginatedRequest.fromBuffer(value),
        ($5.UserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdPaginatedRequest, $5.UserListResponse>(
        'GetFollowing',
        getFollowing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdPaginatedRequest.fromBuffer(value),
        ($5.UserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $5.BlockResponse>(
        'ToggleBlock',
        toggleBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($5.BlockResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdPaginatedRequest, $5.UserListResponse>(
        'GetBlocked',
        getBlocked_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdPaginatedRequest.fromBuffer(value),
        ($5.UserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CommentRequest, $1.CommentResponse>(
        'AddComment',
        addComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CommentRequest.fromBuffer(value),
        ($1.CommentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdPaginatedRequest, $1.CommentsResponse>(
        'GetComments',
        getComments_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdPaginatedRequest.fromBuffer(value),
        ($1.CommentsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.UserResponse> getMe_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getMe(call, await request);
  }

  $async.Future<$5.UserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$5.UserListResponse> searchUsers_Pre($grpc.ServiceCall call, $async.Future<$5.UserSearchRequest> request) async {
    return searchUsers(call, await request);
  }

  $async.Future<$5.UserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$5.UserUpdateRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$5.UserResponse> uploadAvatar_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateAvatarRequest> request) async {
    return uploadAvatar(call, await request);
  }

  $async.Future<$5.FollowResponse> toggleFollow_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return toggleFollow(call, await request);
  }

  $async.Future<$5.UserListResponse> getFollowers_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdPaginatedRequest> request) async {
    return getFollowers(call, await request);
  }

  $async.Future<$5.UserListResponse> getFollowing_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdPaginatedRequest> request) async {
    return getFollowing(call, await request);
  }

  $async.Future<$5.BlockResponse> toggleBlock_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return toggleBlock(call, await request);
  }

  $async.Future<$5.UserListResponse> getBlocked_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdPaginatedRequest> request) async {
    return getBlocked(call, await request);
  }

  $async.Future<$1.CommentResponse> addComment_Pre($grpc.ServiceCall call, $async.Future<$1.CommentRequest> request) async {
    return addComment(call, await request);
  }

  $async.Future<$1.CommentsResponse> getComments_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdPaginatedRequest> request) async {
    return getComments(call, await request);
  }

  $async.Future<$5.UserResponse> getMe($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$5.UserResponse> getUser($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$5.UserListResponse> searchUsers($grpc.ServiceCall call, $5.UserSearchRequest request);
  $async.Future<$5.UserResponse> updateUser($grpc.ServiceCall call, $5.UserUpdateRequest request);
  $async.Future<$5.UserResponse> uploadAvatar($grpc.ServiceCall call, $5.UpdateAvatarRequest request);
  $async.Future<$5.FollowResponse> toggleFollow($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$5.UserListResponse> getFollowers($grpc.ServiceCall call, $1.GetByIdPaginatedRequest request);
  $async.Future<$5.UserListResponse> getFollowing($grpc.ServiceCall call, $1.GetByIdPaginatedRequest request);
  $async.Future<$5.BlockResponse> toggleBlock($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$5.UserListResponse> getBlocked($grpc.ServiceCall call, $1.GetByIdPaginatedRequest request);
  $async.Future<$1.CommentResponse> addComment($grpc.ServiceCall call, $1.CommentRequest request);
  $async.Future<$1.CommentsResponse> getComments($grpc.ServiceCall call, $1.GetByIdPaginatedRequest request);
}
