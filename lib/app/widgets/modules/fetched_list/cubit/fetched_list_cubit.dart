import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/core/usecase/list_usecase.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';

part 'fetched_list_state.dart';

class FetchedListCubit<T> extends Cubit<FetchedListState<T>> {
  FetchedListCubit(ListUseCase<T> listUseCase)
      : _listUseCase = listUseCase,
        super(FetchedListState<T>.initial());
  final ListUseCase<T> _listUseCase;

  Future<void> fetchList(ListUseCaseParams params) async {
    emit(state.copyWith(isLoading: true));
    try {
      final response = await _listUseCase(params);
      emit(state.copyWith(
        items: response.items,
        query: params.query,
        totalCount: response.totalCount,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(error: e, isLoading: false));
    }
  }
}
