import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/generated/protos/chatpb.pbgrpc.dart';

@lazySingleton
class ChatRepository {
  ChatRepository(ClientChannel channel, AuthInterceptor authInterceptor,
      LoggerInterceptor loggerInterceptor)
      : _client = ChatServiceClient(channel, interceptors: [
          authInterceptor,
          loggerInterceptor,
        ]);

  final ChatServiceClient _client;

  Stream<ChatMessage> connect(Channel channel) {
    return _client.connect(channel);
  }

  Future<ChatMessage> sendMessage(ChatMessageRequest message) {
    return _client.sendMessage(message);
  }

  Future<ChatMessageListResponse> getMessages(Channel channel) {
    return _client.getChatMessages(channel);
  }
}
