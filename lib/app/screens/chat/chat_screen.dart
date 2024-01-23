import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quarterback_flutter/app/widgets/profile/avatar.dart';
import 'package:quarterback_flutter/core/extensions/build_context_extensions.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';
import 'package:quarterback_flutter/features/chat/cubit/chat_cubit.dart';
import 'package:quarterback_flutter/generated/protos/chatpb.pb.dart';

class ChatListScreenSubtitle extends StatelessWidget {
  const ChatListScreenSubtitle({super.key, required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            message.content,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Icon(
          message.isReceived ? Icons.done_all : Icons.done,
          size: 18,
        )
      ],
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Chat"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            return ListView(
                children: state.users
                    .map(
                      (e) => ListTile(
                        tileColor: AppColors.surface,
                        onTap: () => context.go('/chat/${e.id}'),
                        leading: Avatar(path: e.avatarPath),
                        title: Text("@${e.username}",
                            style: context.textTheme.titleMedium),
                        subtitle: ChatListScreenSubtitle(
                          message: state.messages
                              .where((element) =>
                                  element.receiverId == e.id ||
                                  element.senderId == e.id)
                              .last,
                        ),
                      ),
                    )
                    .toList());
          },
        ),
      ),
    );
  }
}
