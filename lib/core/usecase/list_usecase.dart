import 'package:quarterback_flutter/core/usecase/usecase.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';

abstract class ListUseCase<T>
    extends UseCase<Future<ListUseCaseResponse<T>>, ListUseCaseParams> {}

class ListUseCaseParams {
  const ListUseCaseParams({
    required this.query,
    required this.paginationRequest,
  });

  final Query query;
  final PaginationRequest paginationRequest;
}

class ListUseCaseResponse<T> {
  final List<T> items;
  final int totalCount;

  ListUseCaseResponse({required this.items, required this.totalCount});
}
