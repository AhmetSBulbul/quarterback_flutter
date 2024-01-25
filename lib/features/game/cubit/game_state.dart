// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'game_cubit.dart';

class GameState extends Equatable {
  const GameState({required this.game, this.error});
  final Game game;
  final Object? error;

  bool get isWaiting => game.hasInProgress();
  bool get isStarted => game.hasStarted();
  bool get isEnded => game.hasEnded();

  List<User> get players => [...game.homePlayers, ...game.awayPlayers];

  bool isPlayer(int userId) => players.any((p) => p.id == userId);

  GameState copyWith({
    Game? game,
    Object? error,
  }) {
    return GameState(
      game: game ?? this.game,
      error: error,
    );
  }

  @override
  List<Object?> get props => [game, error];
}
