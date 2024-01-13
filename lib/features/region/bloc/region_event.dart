part of 'region_bloc.dart';

sealed class RegionEvent extends Equatable {
  const RegionEvent();

  @override
  List<Object> get props => [];
}

// Requests initial country list data
final class RegionCountryRequested extends RegionEvent {
  const RegionCountryRequested();
}

final class RegionSelectedCountryChanged extends RegionEvent {
  const RegionSelectedCountryChanged({
    required this.country,
  });

  final Country country;

  @override
  List<Object> get props => [country];
}

final class RegionSelectedCityChanged extends RegionEvent {
  const RegionSelectedCityChanged({
    required this.city,
  });

  final City city;

  @override
  List<Object> get props => [city];
}

final class RegionSelectedDistrictChanged extends RegionEvent {
  const RegionSelectedDistrictChanged({
    required this.district,
  });

  final District district;

  @override
  List<Object> get props => [district];
}
