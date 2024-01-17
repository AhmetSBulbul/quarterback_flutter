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
import 'package:quarterback_flutter/features/user/data/user_repository.dart';
import 'package:quarterback_flutter/generated/protos/filepb.pbgrpc.dart';

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
                FutureBuilder(
                  future: locator<UserRepository>().getMe(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data.toString());
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
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
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(response.path),
                                content:
                                    Center(child: Image.network(response.path)),
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
