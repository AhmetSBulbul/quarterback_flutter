part of 'profile_cubit.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileLoading extends ProfileState {}

final class ProfileError extends ProfileState {
  const ProfileError({required this.cause, required this.error});

  final String cause;
  final Object error;

  @override
  List<Object> get props => [cause, error];
}

final class ProfileLoaded extends ProfileState {
  const ProfileLoaded({required this.user});

  final Player user;

  @override
  List<Object> get props => [user];
}
