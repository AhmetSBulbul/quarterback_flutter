import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/features/auth/cubit/auth_cubit.dart';

@module
abstract class RegisterModule {
  @singleton
  ClientChannel get clientChannel => ClientChannel(
        'localhost',
        port: 50001,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );

  @preResolve
  Future<AuthCubit> get authCubit async {
    final authCubit = AuthCubit();
    // await authCubit.login();
    await Future.delayed(const Duration(seconds: 1));
    return authCubit;
  }
  // @singleton
  // AuthCubit get authCubit => AuthCubit();
}
