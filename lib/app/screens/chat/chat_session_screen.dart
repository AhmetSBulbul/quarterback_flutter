import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarterback_flutter/app/widgets/layout/sized_spacer.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/chat/cubit/chat_cubit.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/chatpb.pbgrpc.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pb.dart';

class ChatSessionTitle extends StatelessWidget {
  const ChatSessionTitle({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar.small(path: user.avatarPath),
        const SizedSpacer.medium(),
        Text("@${user.username}")
      ],
    );
  }
}

class ChatMessageBubble extends StatelessWidget {
  const ChatMessageBubble(
      {super.key, required this.message, required this.isMe});
  final ChatMessage message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(message.content),
              Icon(
                message.isReceived ? Icons.done_all : Icons.done,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatSessionScreen extends StatelessWidget {
  ChatSessionScreen({super.key, required this.userId});
  final int userId;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              titleSpacing: 0,
              title: state.users.any((element) => element.id == userId)
                  ? ChatSessionTitle(
                      user: state.users
                          .firstWhere((element) => element.id == userId),
                    )
                  : FutureBuilder(
                      future: locator<UserRepository>().getUser(userId),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ChatSessionTitle(
                            user: snapshot.data as User,
                          );
                        } else {
                          return const Text("Loading...");
                        }
                      }),
              centerTitle: false,
            ),
            body: ListView(
                reverse: true,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: state.messages
                    .where((element) =>
                        element.receiverId == userId ||
                        element.senderId == userId)
                    .map(
                      (e) => Align(
                        alignment: e.senderId != userId
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: IntrinsicWidth(
                          stepWidth: 50,
                          child: ChatMessageBubble(
                              message: e, isMe: e.senderId != userId),
                        ),
                      ),
                    )
                    .toList()
                    .reversed
                    .toList()),
            // TODO: Make it stack
            bottomNavigationBar: BottomAppBar(
              color: AppColors.surface,
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
                        _controller.clear();
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
