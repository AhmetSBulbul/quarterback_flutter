import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String cause;

  const Failure({required this.cause});

  @override
  List<Object> get props => [cause];
}

class FailureWithException extends Failure {
  final Exception exception;

  const FailureWithException({required String cause, required this.exception})
      : super(cause: cause);

  @override
  List<Object> get props => [cause, exception];
}
