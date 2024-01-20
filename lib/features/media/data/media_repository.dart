import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/generated/protos/filepb.pbgrpc.dart';

@lazySingleton
class MediaRepository {
  MediaRepository(ClientChannel channel, LoggerInterceptor loggerInterceptor,
      AuthInterceptor authInterceptor)
      : _fileServiceClient = FileServiceClient(channel,
            interceptors: [loggerInterceptor, authInterceptor]);

  final FileServiceClient _fileServiceClient;

  Future<GetFileResponse> uploadFile(UploadRequest request) async {
    try {
      final response = await _fileServiceClient.upload(request);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<GetFileResponse> getFile(int id) async {
    try {
      final response = await _fileServiceClient.getFile(FileId(id: id));
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
