// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_with_query_cubit.dart';

class SearchWithQueryState extends Equatable {
  const SearchWithQueryState(
      {required this.queryString,
      required this.countryId,
      required this.cityId,
      required this.districtId});

  final String queryString;
  final int? countryId;
  final int? cityId;
  final int? districtId;

  Query get query => Query(
        query: queryString,
        countryId: countryId,
        cityId: cityId,
        districtId: districtId,
      );

  factory SearchWithQueryState.initial() => const SearchWithQueryState(
        queryString: '',
        countryId: null,
        cityId: null,
        districtId: null,
      );

  SearchWithQueryState copyWith({
    String? queryString,
    int? countryId,
    int? cityId,
    int? districtId,
  }) {
    return SearchWithQueryState(
      queryString: queryString ?? this.queryString,
      countryId: countryId ?? this.countryId,
      cityId: cityId ?? this.cityId,
      districtId: districtId ?? this.districtId,
    );
  }

  @override
  List<Object?> get props => [queryString, countryId, cityId, districtId];
}
