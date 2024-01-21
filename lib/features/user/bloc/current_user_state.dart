part of 'current_user_bloc.dart';

sealed class CurrentUserState extends Equatable {
  const CurrentUserState();

  @override
  List<Object> get props => [];
}

final class CurrentUserInitial extends CurrentUserState {}

final class CurrentUserError extends CurrentUserState {
  const CurrentUserError({required this.cause, required this.error});

  final String cause;
  final Object error;

  @override
  List<Object> get props => [cause, error];
}

final class CurrentUserLoaded extends CurrentUserState {
  const CurrentUserLoaded(
      {required this.user, required this.followers, required this.following});

  final Player user;
  final List<User> followers;
  final List<User> following;

  @override
  List<Object> get props => [user, followers, following];
}
