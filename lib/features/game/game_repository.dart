import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:quarterback_flutter/core/interceptors/auth_interceptor.dart';
import 'package:quarterback_flutter/core/interceptors/logger_interceptor.dart';
import 'package:quarterback_flutter/generated/protos/gamepb.pbgrpc.dart';

@lazySingleton
class GameRepository {
  GameRepository(ClientChannel channel, LoggerInterceptor loggerInterceptor,
      AuthInterceptor authInterceptor)
      : _gameServiceClient = GameServiceClient(channel,
            interceptors: [loggerInterceptor, authInterceptor]);

  final GameServiceClient _gameServiceClient;

  Future<Game> getGame(int gameId) async {
    return (await _gameServiceClient.getGame(GetGameRequest(gameId: gameId)))
        .game;
  }

  Future<Game> createGame(int courtId) async {
    try {
      final resp = await _gameServiceClient
          .createGame(CreateGameRequest(courtId: courtId));
      // What is the difference
      // return await getGame(resp.gameId);
      return getGame(resp.gameId);
    } catch (e) {
      rethrow;
    }
  }

  Future<Game> joinGame(int gameId) async {
    try {
      final resp =
          await _gameServiceClient.joinGame(JoinGameRequest(gameId: gameId));
      // What is the difference
      // return await getGame(resp.gameId);
      return getGame(resp.gameId);
    } catch (e) {
      rethrow;
    }
  }

  Future<Game> startGame(int gameId) async {
    try {
      final resp =
          await _gameServiceClient.startGame(StartGameRequest(gameId: gameId));
      // What is the difference
      // return await getGame(resp.gameId);
      return getGame(resp.gameId);
    } catch (e) {
      rethrow;
    }
  }

  Future<Game> endGame(EndGameRequest req) async {
    try {
      final resp = await _gameServiceClient.endGame(req);
      // What is the difference
      // return await getGame(resp.gameId);
      return getGame(resp.gameId);
    } catch (e) {
      rethrow;
    }
  }

  Future<Game> cancelGame(int gameId) async {
    try {
      final resp = await _gameServiceClient
          .cancelGame(CancelGameRequest(gameId: gameId));
      // What is the difference
      // return await getGame(resp.gameId);
      return getGame(resp.gameId);
    } catch (e) {
      rethrow;
    }
  }

  Future<Game> leaveGame(int gameId) async {
    try {
      final resp =
          await _gameServiceClient.leaveGame(LeaveGameRequest(gameId: gameId));
      // What is the difference
      // return await getGame(resp.gameId);
      return getGame(resp.gameId);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Game>> listGamesByLocation(
      ListGamesByLocationRequest request) async {
    try {
      final response = await _gameServiceClient.listGamesByLocation(request);
      return response.games;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Game>> listGamesByCourt(int courtId) async {
    try {
      final response =
          await _gameServiceClient.listGamesByCourt(ListGamesByCourtRequest(
        courtId: courtId,
      ));
      return response.games;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Game>> listGamesByUser(int userId) async {
    try {
      final response =
          await _gameServiceClient.listGamesByUser(ListGamesByUserRequest(
        userId: userId,
      ));
      return response.games;
    } catch (e) {
      rethrow;
    }
  }
}
