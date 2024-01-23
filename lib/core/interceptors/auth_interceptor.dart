import 'package:grpc/service_api.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/features/auth/data/auth_storage.dart';

@singleton
class AuthInterceptor implements ClientInterceptor {
  AuthInterceptor(AuthStorage authStorage) : _authStorage = authStorage;

  final AuthStorage _authStorage;

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker) {
    final token = _authStorage.token;
    print("Intercepting stream");
    if (token != null) {
      final newOptions = options.mergedWith(CallOptions(
          metadata: {'Authorization': 'Bearer ${_authStorage.token}'}));

      return invoker(method, requests, newOptions);
    } else {
      return invoker(method, requests, options);
    }
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    final token = _authStorage.token;
    if (token != null) {
      final newOptions = options.mergedWith(CallOptions(
          metadata: {'Authorization': 'Bearer ${_authStorage.token}'}));

      return invoker(method, request, newOptions);
    } else {
      return invoker(method, request, options);
    }
  }
}
