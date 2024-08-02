// abstract final class AppConfig {
//   static const String host = '0.0.0.0';
//   static const int port = 50001;
// }

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  final String host;
  final int port;
  final String storagePath;

  const AppConfig(
      {required this.host, required this.port, required this.storagePath});

  static Future<AppConfig> loadFromEnv() async {
    await dotenv.load(fileName: '.env');
    return AppConfig(
      host: dotenv.env['HOST']!,
      port: int.parse(dotenv.env['PORT']!),
      storagePath: dotenv.env['STORAGE']!,
    );
  }
}
