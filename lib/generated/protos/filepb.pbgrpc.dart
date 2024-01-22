//
//  Generated code. Do not modify.
//  source: filepb.proto
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

import 'filepb.pb.dart' as $4;

export 'filepb.pb.dart';

@$pb.GrpcServiceName('file.FileService')
class FileServiceClient extends $grpc.Client {
  static final _$upload = $grpc.ClientMethod<$4.UploadRequest, $4.GetFileResponse>(
      '/file.FileService/Upload',
      ($4.UploadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetFileResponse.fromBuffer(value));
  static final _$getFile = $grpc.ClientMethod<$4.FileId, $4.GetFileResponse>(
      '/file.FileService/GetFile',
      ($4.FileId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetFileResponse.fromBuffer(value));

  FileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetFileResponse> upload($4.UploadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upload, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetFileResponse> getFile($4.FileId request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFile, request, options: options);
  }
}

@$pb.GrpcServiceName('file.FileService')
abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'file.FileService';

  FileServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.UploadRequest, $4.GetFileResponse>(
        'Upload',
        upload_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UploadRequest.fromBuffer(value),
        ($4.GetFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.FileId, $4.GetFileResponse>(
        'GetFile',
        getFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.FileId.fromBuffer(value),
        ($4.GetFileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.GetFileResponse> upload_Pre($grpc.ServiceCall call, $async.Future<$4.UploadRequest> request) async {
    return upload(call, await request);
  }

  $async.Future<$4.GetFileResponse> getFile_Pre($grpc.ServiceCall call, $async.Future<$4.FileId> request) async {
    return getFile(call, await request);
  }

  $async.Future<$4.GetFileResponse> upload($grpc.ServiceCall call, $4.UploadRequest request);
  $async.Future<$4.GetFileResponse> getFile($grpc.ServiceCall call, $4.FileId request);
}
