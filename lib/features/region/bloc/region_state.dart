// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'region_bloc.dart';

final class RegionState extends Equatable {
  const RegionState({
    this.countries = const [],
    this.cities = const [],
    this.districts = const [],
    this.selectedCountry,
    this.selectedCity,
    this.selectedDistrict,
    this.failure,
  });

  final List<Country> countries;
  final List<City> cities;
  final List<District> districts;
  final Country? selectedCountry;
  final City? selectedCity;
  final District? selectedDistrict;
  final FailureWithException? failure;

  @override
  List<Object?> get props => [
        countries,
        cities,
        districts,
        selectedCountry,
        selectedCity,
        selectedDistrict,
        failure,
      ];

  RegionState copyWith({
    List<Country>? countries,
    List<City>? cities,
    List<District>? districts,
    Country? selectedCountry,
    City? selectedCity,
    District? selectedDistrict,
    FailureWithException? failure,
  }) {
    return RegionState(
      countries: countries ?? this.countries,
      cities: cities ?? this.cities,
      districts: districts ?? this.districts,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      selectedCity:
          selectedCountry != null ? null : selectedCity ?? this.selectedCity,
      selectedDistrict: selectedCity != null
          ? null
          : selectedDistrict ?? this.selectedDistrict,
      // If failure is null, then it will remove the failure
      failure: failure,
    );
  }
}
