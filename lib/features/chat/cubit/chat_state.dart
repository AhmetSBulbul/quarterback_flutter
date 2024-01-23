// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'chat_cubit.dart';

class NewMessage extends Equatable {
  final User sender;
  final ChatMessage message;

  const NewMessage({required this.sender, required this.message});

  @override
  List<Object?> get props => [sender, message];
}

class ChatState extends Equatable {
  final List<ChatMessage> messages;
  final List<User> users;
  final NewMessage? newMessage;

  const ChatState(
      {required this.messages, required this.users, this.newMessage});

  // ChatState appendMessage(ChatMessage message) {
  //   return ChatState(messages: [...messages, message], isNewMessage: true);
  // }

  @override
  List<Object?> get props => [messages];

  ChatState copyWith({
    List<ChatMessage>? messages,
    List<User>? users,
    NewMessage? newMessage,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      users: users ?? this.users,
      newMessage: newMessage,
    );
  }
}
