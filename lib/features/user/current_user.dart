// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  CurrentUser copyWith({
    int? id,
    String? email,
    String? username,
    String? name,
    String? lastName,
    String? avatarPath,
    Country? country,
    City? city,
    District? district,
  }) {
    return CurrentUser(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      avatarPath: avatarPath ?? this.avatarPath,
      country: country ?? this.country,
      city: city ?? this.city,
      district: district ?? this.district,
    );
  }
}
