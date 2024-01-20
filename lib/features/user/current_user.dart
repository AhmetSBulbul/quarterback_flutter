import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/generated/protos/regionpb.pbgrpc.dart';

class CurrentUser extends Equatable {
  const CurrentUser({
    required this.id,
    required this.email,
    required this.username,
    required this.name,
    required this.lastName,
    required this.avatarPath,
    required this.country,
    required this.city,
    required this.district,
  });

  final int id;
  final String email;
  final String username;
  final String name;
  final String lastName;
  final String avatarPath;
  final Country country;
  final City city;
  final District district;

  @override
  List<Object?> get props => [
        id,
        email,
        username,
        name,
        lastName,
        avatarPath,
        country,
        city,
        district,
      ];
}
