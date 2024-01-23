import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/features/chat/data/chat_repository.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/chatpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pb.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(
      {required this.meId,
      required ChatRepository repository,
      required UserRepository userRepository})
      : _chatRepository = repository,
        _userRepository = userRepository,
        super(const ChatState(messages: [], users: [])) {
    _chatRepository.getMessages(Channel(id: meId)).then((value) async {
      // extract users
      final userIds = value.messages
          .map((e) => e.senderId)
          .toSet()
          .union(value.messages.map((e) => e.receiverId).toSet())
          .toList()
          .where((element) => element != meId);
      var users = <User>[];

      for (final userId in userIds) {
        final response = await _userRepository.getUser(userId);
        users.add(response);
      }
      emit(ChatState(messages: value.messages, users: users));
      // emit(ChatState(messages: value.messages));
    }, onError: (e) {
      print("Error on get messages: $e");
    });

    _chatRepository.connect(Channel(id: meId)).listen((event) async {
      // // TODO: on message received
      // emit(state.appendMessage(event));
      if (state.users.any((element) => element.id == event.senderId)) {
        final user = state.users.firstWhere((element) =>
            element.id ==
            (event.senderId != meId ? event.senderId : event.receiverId));
        final NewMessage newMessage = NewMessage(sender: user, message: event);
        emit(state.copyWith(
            messages: [...state.messages, event], newMessage: newMessage));
      } else {
        final user = await _userRepository.getUser(event.senderId);
        final NewMessage newMessage = NewMessage(sender: user, message: event);
        emit(state.copyWith(
            messages: [...state.messages, event],
            users: [...state.users, user],
            newMessage: newMessage));
      }
    });
  }

  final ChatRepository _chatRepository;
  final UserRepository _userRepository;
  final int meId;

  Future<void> sendMessage(String content, int receiverId) async {
    try {
      final response = await _chatRepository.sendMessage(ChatMessageRequest(
        senderId: meId,
        receiverId: receiverId,
        content: content,
      ));

      if (state.users.any((element) => element.id == receiverId)) {
        emit(state.copyWith(messages: [...state.messages, response]));
      } else {
        final user = await _userRepository.getUser(receiverId);
        emit(state.copyWith(
            messages: [...state.messages, response],
            users: [...state.users, user]));
      }
    } catch (e) {
      print("Error on send message: $e");
      rethrow;
    }
  }
}
