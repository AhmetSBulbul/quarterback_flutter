import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarterback_flutter/features/game/game_repository.dart';
import 'package:quarterback_flutter/generated/protos/gamepb.pb.dart';
import 'package:quarterback_flutter/generated/protos/userpb.pb.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit({required Game initial, required GameRepository gameRepository})
      : _gameRepository = gameRepository,
        super(GameState(game: initial));

  final GameRepository _gameRepository;

  Future<void> refresh() async {
    try {
      final game = await _gameRepository.getGame(state.game.id);
      emit(state.copyWith(game: game));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  Future<void> joinGame(bool isHomeSide) async {
    try {
      final game = await _gameRepository.joinGame(state.game.id, isHomeSide);
      emit(state.copyWith(game: game));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  Future<void> startGame() async {
    try {
      final game = await _gameRepository.startGame(state.game.id);
      emit(state.copyWith(game: game));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  Future<void> endGame(int homeScore, int awayScore) async {
    try {
      final game = await _gameRepository.endGame(EndGameRequest(
          gameId: state.game.id, homeScore: homeScore, awayScore: awayScore));
      emit(state.copyWith(game: game));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  Future<void> cancelGame() async {
    try {
      final game = await _gameRepository.cancelGame(state.game.id);
      emit(state.copyWith(game: game));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }

  Future<void> leaveGame() async {
    try {
      // TODO: check game status
      final game = await _gameRepository.leaveGame(state.game.id);
      emit(state.copyWith(game: game));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }
}
