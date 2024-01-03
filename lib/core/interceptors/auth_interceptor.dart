import 'package:grpc/service_api.dart';

class AuthInterceptor implements ClientInterceptor {
  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker) {
    // TODO: implement interceptStreaming
    throw UnimplementedError();
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    print(
        "AuthInterceptor method: ${method.path}, request: ${request.toString()}, options: ${options.toString()}");
    return invoker(method, request, options);
  }
}
