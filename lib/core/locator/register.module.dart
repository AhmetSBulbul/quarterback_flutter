import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/config.dart';

@module
abstract class RegisterModule {
  // TODO: Should be used encrypted storage
  @Named('credentialsBox')
  @preResolve
  Future<Box<String>> get credentialsBox =>
      Hive.openBox<String>('credentialsBox');

  @preResolve
  @singleton
  Future<AppConfig> get appConfig => AppConfig.loadFromEnv();

  @singleton
  ClientChannel clientChannel(AppConfig appConfig) => ClientChannel(
        appConfig.host,
        port: appConfig.port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
}
