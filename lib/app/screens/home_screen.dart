import 'dart:io' as io;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grpc/grpc.dart';
import 'package:quarterback_flutter/app/widgets/brand/app_icons.dart';
import 'package:quarterback_flutter/app/widgets/brand/logo.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/core/locator/injectable.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';
import 'package:quarterback_flutter/features/auth/data/auth_storage.dart';
import 'package:quarterback_flutter/features/media/data/media_repository.dart';
import 'package:quarterback_flutter/features/user/bloc/current_user_bloc.dart';
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/filepb.pbgrpc.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pbgrpc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => context.go('/search'),
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => context.read<AuthCubit>().logout(),
            icon: const Icon(Icons.logout),
          ),
          IconButton(onPressed: () => {}, icon: const AppIcons.basketball())
        ],
      ),
      body: Center(child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthAuthenticated) {
            return Column(
              children: [
                BlocBuilder<CurrentUserBloc, CurrentUserState>(
                  builder: (context, state) {
                    if (state is CurrentUserLoaded) {
                      return Column(
                        children: [
                          Text(state.user.name),
                          Text(state.user.lastName),
                          Text(state.user.email),
                          Text(state.user.username),
                          Text(state.user.country.name),
                          Text(state.user.city.name),
                          Text(state.user.district.name),
                          // Image.network(state.user.avatarPath),
                        ],
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(type: FileType.media);

                    if (result != null) {
                      io.File file = io.File(result.files.single.path!);
                      final response = await locator<MediaRepository>()
                          .uploadFile(UploadRequest(
                        data: file.readAsBytesSync(),
                        name: result.files.single.name,
                      ));
                      print(response);
                      context.read<CurrentUserBloc>().add(
                          CurrentUserAvatarUpdated(
                              UpdateAvatarRequest(avatarFileId: response.id)));
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(response.path),
                                content: Center(
                                    child: Image.network(
                                        'http://0.0.0.0:8080${response.path}')),
                              ));
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: const Text("Upload Photo"),
                )
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
