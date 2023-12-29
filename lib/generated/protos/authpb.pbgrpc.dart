//
//  Generated code. Do not modify.
//  source: authpb.proto
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

import 'authpb.pb.dart' as $0;
import 'commonpb.pb.dart' as $1;

export 'authpb.pb.dart';

@$pb.GrpcServiceName('auth.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.Credentials>(
      '/auth.AuthService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Credentials.fromBuffer(value));
  static final _$register = $grpc.ClientMethod<$0.RegisterRequest, $0.Credentials>(
      '/auth.AuthService/Register',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Credentials.fromBuffer(value));
  static final _$refresh = $grpc.ClientMethod<$0.RefreshTokenRequest, $0.Credentials>(
      '/auth.AuthService/Refresh',
      ($0.RefreshTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Credentials.fromBuffer(value));
  static final _$sendOtp = $grpc.ClientMethod<$0.SendOtpRequest, $1.SuccessResponse>(
      '/auth.AuthService/SendOtp',
      ($0.SendOtpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SuccessResponse.fromBuffer(value));
  static final _$resetPasswordWithOtp = $grpc.ClientMethod<$0.ResetPasswordWithOtpRequest, $1.SuccessResponse>(
      '/auth.AuthService/ResetPasswordWithOtp',
      ($0.ResetPasswordWithOtpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SuccessResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Credentials> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.Credentials> register($0.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.Credentials> refresh($0.RefreshTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }

  $grpc.ResponseFuture<$1.SuccessResponse> sendOtp($0.SendOtpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendOtp, request, options: options);
  }

  $grpc.ResponseFuture<$1.SuccessResponse> resetPasswordWithOtp($0.ResetPasswordWithOtpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPasswordWithOtp, request, options: options);
  }
}

@$pb.GrpcServiceName('auth.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.Credentials>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.Credentials value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.Credentials>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.Credentials value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RefreshTokenRequest, $0.Credentials>(
        'Refresh',
        refresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RefreshTokenRequest.fromBuffer(value),
        ($0.Credentials value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendOtpRequest, $1.SuccessResponse>(
        'SendOtp',
        sendOtp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendOtpRequest.fromBuffer(value),
        ($1.SuccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResetPasswordWithOtpRequest, $1.SuccessResponse>(
        'ResetPasswordWithOtp',
        resetPasswordWithOtp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResetPasswordWithOtpRequest.fromBuffer(value),
        ($1.SuccessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Credentials> login_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.Credentials> register_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.Credentials> refresh_Pre($grpc.ServiceCall call, $async.Future<$0.RefreshTokenRequest> request) async {
    return refresh(call, await request);
  }

  $async.Future<$1.SuccessResponse> sendOtp_Pre($grpc.ServiceCall call, $async.Future<$0.SendOtpRequest> request) async {
    return sendOtp(call, await request);
  }

  $async.Future<$1.SuccessResponse> resetPasswordWithOtp_Pre($grpc.ServiceCall call, $async.Future<$0.ResetPasswordWithOtpRequest> request) async {
    return resetPasswordWithOtp(call, await request);
  }

  $async.Future<$0.Credentials> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.Credentials> register($grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.Credentials> refresh($grpc.ServiceCall call, $0.RefreshTokenRequest request);
  $async.Future<$1.SuccessResponse> sendOtp($grpc.ServiceCall call, $0.SendOtpRequest request);
  $async.Future<$1.SuccessResponse> resetPasswordWithOtp($grpc.ServiceCall call, $0.ResetPasswordWithOtpRequest request);
}
