part of 'current_user_bloc.dart';

sealed class CurrentUserEvent extends Equatable {
  const CurrentUserEvent();

  @override
  List<Object> get props => [];
}

final class CurrentUserRequested extends CurrentUserEvent {}

final class CurrentUserAvatarUpdated extends CurrentUserEvent {
  final UpdateAvatarRequest request;

  CurrentUserAvatarUpdated(this.request);

  @override
  List<Object> get props => [request];
}

// TODO: Update avatar, name, etc.
