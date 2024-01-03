import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @singleton
  ClientChannel get clientChannel => ClientChannel(
        'localhost',
        port: 50001,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
}
