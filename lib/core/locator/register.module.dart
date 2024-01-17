import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Named('credentialsBox')
  @preResolve
  Future<Box<String>> get credentialsBox =>
      Hive.openBox<String>('credentialsBox');

  @singleton
  ClientChannel get clientChannel => ClientChannel(
        // 'localhost',
        // '192.168.8.173',
        '192.168.0.110',
        port: 50001,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
}
