// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'location_cubit.dart';

class LocationState extends Equatable {
  const LocationState._(
      {this.data,
      this.isLocationServiceEnabled = false,
      this.isLocationPermissionGranted = false})
      : isInitial = false;

  const LocationState.initial(
      {this.data,
      this.isLocationServiceEnabled = false,
      this.isLocationPermissionGranted = false})
      : isInitial = true;

  final Location? data;
  final bool isLocationServiceEnabled;
  final bool isLocationPermissionGranted;
  final bool isInitial;

  @override
  List<Object> get props => [];

  LocationState copyWith({
    Location? data,
    bool? isLocationServiceEnabled,
    bool? isLocationPermissionGranted,
  }) {
    return LocationState._(
      data: data ?? this.data,
      isLocationServiceEnabled:
          isLocationServiceEnabled ?? this.isLocationServiceEnabled,
      isLocationPermissionGranted:
          isLocationPermissionGranted ?? this.isLocationPermissionGranted,
    );
  }
}
