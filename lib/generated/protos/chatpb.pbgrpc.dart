//
//  Generated code. Do not modify.
//  source: chatpb.proto
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

import 'chatpb.pb.dart' as $2;

export 'chatpb.pb.dart';

@$pb.GrpcServiceName('chat.ChatService')
class ChatServiceClient extends $grpc.Client {
  static final _$getChatMessages = $grpc.ClientMethod<$2.Channel, $2.ChatMessageListResponse>(
      '/chat.ChatService/GetChatMessages',
      ($2.Channel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ChatMessageListResponse.fromBuffer(value));
  static final _$connect = $grpc.ClientMethod<$2.Channel, $2.ChatMessage>(
      '/chat.ChatService/Connect',
      ($2.Channel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ChatMessage.fromBuffer(value));
  static final _$sendMessage = $grpc.ClientMethod<$2.ChatMessageRequest, $2.ChatMessage>(
      '/chat.ChatService/SendMessage',
      ($2.ChatMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ChatMessage.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.ChatMessageListResponse> getChatMessages($2.Channel request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChatMessages, request, options: options);
  }

  $grpc.ResponseStream<$2.ChatMessage> connect($2.Channel request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connect, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$2.ChatMessage> sendMessage($2.ChatMessageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }
}

@$pb.GrpcServiceName('chat.ChatService')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chat.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Channel, $2.ChatMessageListResponse>(
        'GetChatMessages',
        getChatMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Channel.fromBuffer(value),
        ($2.ChatMessageListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Channel, $2.ChatMessage>(
        'Connect',
        connect_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.Channel.fromBuffer(value),
        ($2.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ChatMessageRequest, $2.ChatMessage>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ChatMessageRequest.fromBuffer(value),
        ($2.ChatMessage value) => value.writeToBuffer()));
  }

  $async.Future<$2.ChatMessageListResponse> getChatMessages_Pre($grpc.ServiceCall call, $async.Future<$2.Channel> request) async {
    return getChatMessages(call, await request);
  }

  $async.Stream<$2.ChatMessage> connect_Pre($grpc.ServiceCall call, $async.Future<$2.Channel> request) async* {
    yield* connect(call, await request);
  }

  $async.Future<$2.ChatMessage> sendMessage_Pre($grpc.ServiceCall call, $async.Future<$2.ChatMessageRequest> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$2.ChatMessageListResponse> getChatMessages($grpc.ServiceCall call, $2.Channel request);
  $async.Stream<$2.ChatMessage> connect($grpc.ServiceCall call, $2.Channel request);
  $async.Future<$2.ChatMessage> sendMessage($grpc.ServiceCall call, $2.ChatMessageRequest request);
}
