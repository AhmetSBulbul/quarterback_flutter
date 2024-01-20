part of 'current_user_bloc.dart';

sealed class CurrentUserEvent extends Equatable {
  const CurrentUserEvent();

  @override
  List<Object> get props => [];
}

final class CurrentUserRequested extends CurrentUserEvent {}

// TODO: Update avatar, name, etc.
