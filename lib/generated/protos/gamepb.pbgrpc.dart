//
//  Generated code. Do not modify.
//  source: gamepb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'commonpb.pb.dart' as $1;
import 'gamepb.pb.dart' as $7;

export 'gamepb.pb.dart';

@$pb.GrpcServiceName('game.GameService')
class GameServiceClient extends $grpc.Client {
  static final _$getGame = $grpc.ClientMethod<$7.GetGameRequest, $7.GameResponse>(
      '/game.GameService/GetGame',
      ($7.GetGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GameResponse.fromBuffer(value));
  static final _$listGamesByLocation = $grpc.ClientMethod<$7.ListGamesByLocationRequest, $7.ListGamesResponse>(
      '/game.GameService/ListGamesByLocation',
      ($7.ListGamesByLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByUser = $grpc.ClientMethod<$7.ListGamesByUserRequest, $7.ListGamesResponse>(
      '/game.GameService/ListGamesByUser',
      ($7.ListGamesByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByCourt = $grpc.ClientMethod<$7.ListGamesByCourtRequest, $7.ListGamesResponse>(
      '/game.GameService/ListGamesByCourt',
      ($7.ListGamesByCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByTeam = $grpc.ClientMethod<$7.ListGamesByTeamRequest, $7.ListGamesResponse>(
      '/game.GameService/ListGamesByTeam',
      ($7.ListGamesByTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ListGamesResponse.fromBuffer(value));
  static final _$createGame = $grpc.ClientMethod<$7.CreateGameRequest, $7.GameResponse>(
      '/game.GameService/CreateGame',
      ($7.CreateGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GameResponse.fromBuffer(value));
  static final _$createGameWithTeam = $grpc.ClientMethod<$7.CreateGameWithTeamRequest, $7.GameResponse>(
      '/game.GameService/CreateGameWithTeam',
      ($7.CreateGameWithTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GameResponse.fromBuffer(value));
  static final _$joinGame = $grpc.ClientMethod<$7.JoinGameRequest, $7.GameResponse>(
      '/game.GameService/JoinGame',
      ($7.JoinGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GameResponse.fromBuffer(value));
  static final _$startGame = $grpc.ClientMethod<$7.StartGameRequest, $7.GameResponse>(
      '/game.GameService/StartGame',
      ($7.StartGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GameResponse.fromBuffer(value));
  static final _$endGame = $grpc.ClientMethod<$7.EndGameRequest, $7.GameResponse>(
      '/game.GameService/EndGame',
      ($7.EndGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GameResponse.fromBuffer(value));
  static final _$cancelGame = $grpc.ClientMethod<$7.CancelGameRequest, $7.GameResponse>(
      '/game.GameService/CancelGame',
      ($7.CancelGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GameResponse.fromBuffer(value));
  static final _$addMedia = $grpc.ClientMethod<$1.File, $1.Media>(
      '/game.GameService/AddMedia',
      ($1.File value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Media.fromBuffer(value));

  GameServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.GameResponse> getGame($7.GetGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGame, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListGamesResponse> listGamesByLocation($7.ListGamesByLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByLocation, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListGamesResponse> listGamesByUser($7.ListGamesByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByUser, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListGamesResponse> listGamesByCourt($7.ListGamesByCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByCourt, request, options: options);
  }

  $grpc.ResponseFuture<$7.ListGamesResponse> listGamesByTeam($7.ListGamesByTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByTeam, request, options: options);
  }

  $grpc.ResponseFuture<$7.GameResponse> createGame($7.CreateGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGame, request, options: options);
  }

  $grpc.ResponseFuture<$7.GameResponse> createGameWithTeam($7.CreateGameWithTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGameWithTeam, request, options: options);
  }

  $grpc.ResponseFuture<$7.GameResponse> joinGame($7.JoinGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinGame, request, options: options);
  }

  $grpc.ResponseFuture<$7.GameResponse> startGame($7.StartGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startGame, request, options: options);
  }

  $grpc.ResponseFuture<$7.GameResponse> endGame($7.EndGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$endGame, request, options: options);
  }

  $grpc.ResponseFuture<$7.GameResponse> cancelGame($7.CancelGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelGame, request, options: options);
  }

  $grpc.ResponseFuture<$1.Media> addMedia($1.File request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMedia, request, options: options);
  }
}

@$pb.GrpcServiceName('game.GameService')
abstract class GameServiceBase extends $grpc.Service {
  $core.String get $name => 'game.GameService';

  GameServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetGameRequest, $7.GameResponse>(
        'GetGame',
        getGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetGameRequest.fromBuffer(value),
        ($7.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListGamesByLocationRequest, $7.ListGamesResponse>(
        'ListGamesByLocation',
        listGamesByLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListGamesByLocationRequest.fromBuffer(value),
        ($7.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListGamesByUserRequest, $7.ListGamesResponse>(
        'ListGamesByUser',
        listGamesByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListGamesByUserRequest.fromBuffer(value),
        ($7.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListGamesByCourtRequest, $7.ListGamesResponse>(
        'ListGamesByCourt',
        listGamesByCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListGamesByCourtRequest.fromBuffer(value),
        ($7.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ListGamesByTeamRequest, $7.ListGamesResponse>(
        'ListGamesByTeam',
        listGamesByTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ListGamesByTeamRequest.fromBuffer(value),
        ($7.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateGameRequest, $7.GameResponse>(
        'CreateGame',
        createGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateGameRequest.fromBuffer(value),
        ($7.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateGameWithTeamRequest, $7.GameResponse>(
        'CreateGameWithTeam',
        createGameWithTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateGameWithTeamRequest.fromBuffer(value),
        ($7.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.JoinGameRequest, $7.GameResponse>(
        'JoinGame',
        joinGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.JoinGameRequest.fromBuffer(value),
        ($7.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.StartGameRequest, $7.GameResponse>(
        'StartGame',
        startGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.StartGameRequest.fromBuffer(value),
        ($7.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.EndGameRequest, $7.GameResponse>(
        'EndGame',
        endGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.EndGameRequest.fromBuffer(value),
        ($7.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CancelGameRequest, $7.GameResponse>(
        'CancelGame',
        cancelGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CancelGameRequest.fromBuffer(value),
        ($7.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File, $1.Media>(
        'AddMedia',
        addMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File.fromBuffer(value),
        ($1.Media value) => value.writeToBuffer()));
  }

  $async.Future<$7.GameResponse> getGame_Pre($grpc.ServiceCall call, $async.Future<$7.GetGameRequest> request) async {
    return getGame(call, await request);
  }

  $async.Future<$7.ListGamesResponse> listGamesByLocation_Pre($grpc.ServiceCall call, $async.Future<$7.ListGamesByLocationRequest> request) async {
    return listGamesByLocation(call, await request);
  }

  $async.Future<$7.ListGamesResponse> listGamesByUser_Pre($grpc.ServiceCall call, $async.Future<$7.ListGamesByUserRequest> request) async {
    return listGamesByUser(call, await request);
  }

  $async.Future<$7.ListGamesResponse> listGamesByCourt_Pre($grpc.ServiceCall call, $async.Future<$7.ListGamesByCourtRequest> request) async {
    return listGamesByCourt(call, await request);
  }

  $async.Future<$7.ListGamesResponse> listGamesByTeam_Pre($grpc.ServiceCall call, $async.Future<$7.ListGamesByTeamRequest> request) async {
    return listGamesByTeam(call, await request);
  }

  $async.Future<$7.GameResponse> createGame_Pre($grpc.ServiceCall call, $async.Future<$7.CreateGameRequest> request) async {
    return createGame(call, await request);
  }

  $async.Future<$7.GameResponse> createGameWithTeam_Pre($grpc.ServiceCall call, $async.Future<$7.CreateGameWithTeamRequest> request) async {
    return createGameWithTeam(call, await request);
  }

  $async.Future<$7.GameResponse> joinGame_Pre($grpc.ServiceCall call, $async.Future<$7.JoinGameRequest> request) async {
    return joinGame(call, await request);
  }

  $async.Future<$7.GameResponse> startGame_Pre($grpc.ServiceCall call, $async.Future<$7.StartGameRequest> request) async {
    return startGame(call, await request);
  }

  $async.Future<$7.GameResponse> endGame_Pre($grpc.ServiceCall call, $async.Future<$7.EndGameRequest> request) async {
    return endGame(call, await request);
  }

  $async.Future<$7.GameResponse> cancelGame_Pre($grpc.ServiceCall call, $async.Future<$7.CancelGameRequest> request) async {
    return cancelGame(call, await request);
  }

  $async.Future<$1.Media> addMedia_Pre($grpc.ServiceCall call, $async.Future<$1.File> request) async {
    return addMedia(call, await request);
  }

  $async.Future<$7.GameResponse> getGame($grpc.ServiceCall call, $7.GetGameRequest request);
  $async.Future<$7.ListGamesResponse> listGamesByLocation($grpc.ServiceCall call, $7.ListGamesByLocationRequest request);
  $async.Future<$7.ListGamesResponse> listGamesByUser($grpc.ServiceCall call, $7.ListGamesByUserRequest request);
  $async.Future<$7.ListGamesResponse> listGamesByCourt($grpc.ServiceCall call, $7.ListGamesByCourtRequest request);
  $async.Future<$7.ListGamesResponse> listGamesByTeam($grpc.ServiceCall call, $7.ListGamesByTeamRequest request);
  $async.Future<$7.GameResponse> createGame($grpc.ServiceCall call, $7.CreateGameRequest request);
  $async.Future<$7.GameResponse> createGameWithTeam($grpc.ServiceCall call, $7.CreateGameWithTeamRequest request);
  $async.Future<$7.GameResponse> joinGame($grpc.ServiceCall call, $7.JoinGameRequest request);
  $async.Future<$7.GameResponse> startGame($grpc.ServiceCall call, $7.StartGameRequest request);
  $async.Future<$7.GameResponse> endGame($grpc.ServiceCall call, $7.EndGameRequest request);
  $async.Future<$7.GameResponse> cancelGame($grpc.ServiceCall call, $7.CancelGameRequest request);
  $async.Future<$1.Media> addMedia($grpc.ServiceCall call, $1.File request);
}
