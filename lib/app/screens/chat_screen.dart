import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/features/chat/cubit/chat_cubit.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key, required this.userId});
  final int userId;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Chat With $userId"),
            ),
            body: ListView(
                children: state.messages
                    .where((element) =>
                        element.receiverId == userId ||
                        element.senderId == userId)
                    .map((e) => ListTile(
                          title: Text(e.senderId.toString()),
                          subtitle: Text(e.content),
                        ))
                    .toList()),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: "Type a message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        context
                            .read<ChatCubit>()
                            .sendMessage(_controller.text, userId);
                      }
                    },
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
