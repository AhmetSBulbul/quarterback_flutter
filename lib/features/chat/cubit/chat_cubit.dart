import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/features/chat/data/chat_repository.dart';
import 'package:quarterback_flutter/generated/protos/chatpb.pb.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({required this.userId, required ChatRepository repository})
      : _chatRepository = repository,
        super(const ChatState(messages: [])) {
    _chatRepository.getMessages(Channel(id: userId)).then((value) {
      emit(ChatState(messages: value.messages));
    });

    // TODO: maybe rx?
    _chatRepository.connect(Channel(id: userId)).listen((event) {
      // TODO: on message received
      emit(state.appendMessage(event));
    });
  }

  final ChatRepository _chatRepository;
  final int userId;

  Future<void> sendMessage(String content, int receiverId) async {
    try {
      final response = await _chatRepository.sendMessage(ChatMessageRequest(
        senderId: userId,
        receiverId: receiverId,
        content: content,
      ));

      emit(state.appendMessage(response));
    } catch (e) {
      print("Error on send message: $e");
      rethrow;
    }
  }
}
