import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/config.dart';

@module
abstract class RegisterModule {
  @Named('credentialsBox')
  @preResolve
  Future<Box<String>> get credentialsBox =>
      Hive.openBox<String>('credentialsBox');

  @singleton
  ClientChannel get clientChannel => ClientChannel(
        AppConfig.host,
        port: AppConfig.port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
}
