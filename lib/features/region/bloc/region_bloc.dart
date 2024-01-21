import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/core/errors/failures.dart';
import 'package:quarterback_flutter/features/region/data/region_repository.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pb.dart';

part 'region_event.dart';
part 'region_state.dart';

class RegionBloc extends Bloc<RegionEvent, RegionState> {
  // TODO: handle initial listing on repository side.
  RegionBloc({required RegionRepository repository})
      : _repository = repository,
        super(const RegionState()) {
    on<RegionInitialWithData>(_onRegionInitialWithData);
    on<RegionCountryRequested>(_onCountryRequested);
    on<RegionSelectedCountryChanged>(_onSelectedCountryChanged);
    on<RegionSelectedCityChanged>(_onSelectedCityChanged);
    on<RegionSelectedDistrictChanged>(_onSelectedDistrictChanged);
  }

  final RegionRepository _repository;

  Future<void> _onRegionInitialWithData(
      RegionInitialWithData event, Emitter<RegionState> emit) async {
    try {
      final CountryListResponse countryListResponse =
          await _repository.listCountry();
      final CityListResponse cityListResponse =
          await _repository.listCity(GetByIdRequest(id: event.country.id));
      final DistrictListResponse districtListResponse =
          await _repository.listDistrict(GetByIdRequest(id: event.city.id));
      emit(state.copyWith(
        countries: countryListResponse.countries,
        cities: cityListResponse.cities,
        districts: districtListResponse.districts,
        selectedCountry: event.country,
        selectedCity: event.city,
        selectedDistrict: event.district,
      ));
    } catch (e) {
      emit(state.copyWith(
          failure: FailureWithException(
              cause: 'Error happened while trying to list Countries',
              exception: e as Exception)));
    }
  }

  Future<void> _onCountryRequested(
      RegionCountryRequested event, Emitter<RegionState> emit) async {
    try {
      final CountryListResponse response = await _repository.listCountry();
      emit(state.copyWith(
        countries: response.countries,
      ));
    } catch (e) {
      emit(state.copyWith(
          failure: FailureWithException(
              cause: 'Error happened while trying to list Countries',
              exception: e as Exception)));
    }
  }

  Future<void> _onSelectedCountryChanged(
      RegionSelectedCountryChanged event, Emitter<RegionState> emit) async {
    try {
      final CityListResponse response =
          await _repository.listCity(GetByIdRequest(id: event.country.id));
      emit(state.copyWith(
        selectedCountry: event.country,
        cities: response.cities,
      ));
    } catch (e) {
      emit(state.copyWith(
          failure: FailureWithException(
              cause: 'Error happened while trying to list Cities',
              exception: e as Exception)));
    }
  }

  Future<void> _onSelectedCityChanged(
      RegionSelectedCityChanged event, Emitter<RegionState> emit) async {
    try {
      final DistrictListResponse districtListResponse =
          await _repository.listDistrict(GetByIdRequest(id: event.city.id));
      emit(state.copyWith(
          selectedCity: event.city, districts: districtListResponse.districts));
    } catch (e) {
      emit(state.copyWith(
          failure: FailureWithException(
              cause: 'Error happened while trying to list Districts',
              exception: e as Exception)));
    }
  }

  Future<void> _onSelectedDistrictChanged(
      RegionSelectedDistrictChanged event, Emitter<RegionState> emit) async {
    emit(state.copyWith(selectedDistrict: event.district));
  }
}
