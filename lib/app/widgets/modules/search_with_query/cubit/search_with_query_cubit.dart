import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';

part 'search_with_query_state.dart';

class SearchWithQueryCubit extends Cubit<SearchWithQueryState> {
  SearchWithQueryCubit() : super(SearchWithQueryState.initial());

  void updateQuery(String query) {
    emit(state.copyWith(queryString: query));
  }

  void updateCountryId(int? countryId) {
    emit(state.copyWith(countryId: countryId));
  }

  void updateCityId(int? cityId) {
    emit(state.copyWith(cityId: cityId));
  }

  void updateDistrictId(int? districtId) {
    emit(state.copyWith(districtId: districtId));
  }

  void clear() {
    emit(SearchWithQueryState.initial());
  }
}
