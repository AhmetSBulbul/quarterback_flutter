part of 'fetched_list_cubit.dart';

class FetchedListState<T> extends Equatable {
  const FetchedListState({
    required this.items,
    required this.isLoading,
    required this.error,
    required this.totalCount,
    required this.query,
  });

  final List<T> items;
  final Query query;
  final bool isLoading;
  final Object? error;
  final int totalCount;

  factory FetchedListState.initial() => FetchedListState(
        items: [],
        isLoading: false,
        error: null,
        totalCount: 0,
        query: Query(),
      );

  FetchedListState<T> copyWith({
    List<T>? items,
    bool? isLoading,
    Object? error,
    int? totalCount,
    Query? query,
  }) {
    return FetchedListState<T>(
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      totalCount: totalCount ?? this.totalCount,
      query: query ?? this.query,
    );
  }

  @override
  List<Object?> get props => [items, isLoading, error, totalCount, query];
}
