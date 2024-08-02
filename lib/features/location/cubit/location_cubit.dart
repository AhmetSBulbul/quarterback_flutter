import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:quarterback_flutter/generated/protos/commonpb.pb.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(const LocationState.initial());

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<void> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      // return Future.error('Location services are disabled. Please enable them');
      emit(state.copyWith(
        isLocationServiceEnabled: false,
        isLocationPermissionGranted: false,
      ));
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        // return Future.error('Location permissions are denied');
        emit(state.copyWith(
          isLocationServiceEnabled: true,
          isLocationPermissionGranted: false,
        ));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      // return Future.error(
      //     'Location permissions are permanently denied, we cannot request permissions.');
      emit(state.copyWith(
        isLocationServiceEnabled: true,
        isLocationPermissionGranted: false,
      ));
      return;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    final Position currentPosition = await Geolocator.getCurrentPosition();
    final Location location = Location(
      latitude: currentPosition.latitude,
      longitude: currentPosition.longitude,
    );
    emit(state.copyWith(
      data: location,
      isLocationServiceEnabled: true,
      isLocationPermissionGranted: true,
    ));
  }

  Future<void> openSettingsForPermission() async {
    final bool isOpened = await Geolocator.openAppSettings();
    if (isOpened) {
      await determinePosition();
    }
  }
}
