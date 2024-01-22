part of 'chat_cubit.dart';

final class ChatState extends Equatable {
  final List<ChatMessage> messages;

  const ChatState({required this.messages});

  ChatState appendMessage(ChatMessage message) {
    return ChatState(messages: [...messages, message]);
  }

  @override
  List<Object?> get props => [messages];
}
