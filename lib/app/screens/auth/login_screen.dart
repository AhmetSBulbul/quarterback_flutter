import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:quarterback_flutter/features/auth/data/auth_repository.dart';
import 'package:quarterback_flutter/generated/protos/authpb.pbgrpc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final AuthRepository _authRepository;
  @override
  void initState() {
    super.initState();
    final channel = ClientChannel(
      '192.168.8.173',
      port: 50000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    final authClient = AuthServiceClient(channel);

    _authRepository = AuthRepository(authServiceClient: authClient);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Login"),
          onPressed: () async {
            try {
              final credentials = await _authRepository.register(
                RegisterRequest(
                  username: 'test@mail.com',
                  password: 'password',
                ),
              );
            } catch (e) {
              print(e);
            }
          },
        ),
      ),
    );
  }
}
