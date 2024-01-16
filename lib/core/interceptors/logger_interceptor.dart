import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/helpers/logger_helper.dart';

@singleton
class LoggerInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    logger.d(
      '\n\nGRPC Request'
      'method: ${method.path}'
      'request: ${request.toString()}'
      'options: ${options.toString()}\n\n',
    );

    final response = super.interceptUnary(method, request, options, invoker);
    response.then(
      (value) => logger.d(
        '\n\nGRPC Response'
        'method: ${method.path}'
        'response: ${value.toString()}\n\n',
      ),
    );
    return response;
  }
}
