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
import 'gamepb.pb.dart' as $5;

export 'gamepb.pb.dart';

@$pb.GrpcServiceName('game.GameService')
class GameServiceClient extends $grpc.Client {
  static final _$getGame = $grpc.ClientMethod<$5.GetGameRequest, $5.GameResponse>(
      '/game.GameService/GetGame',
      ($5.GetGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GameResponse.fromBuffer(value));
  static final _$listGamesByLocation = $grpc.ClientMethod<$5.ListGamesByLocationRequest, $5.ListGamesResponse>(
      '/game.GameService/ListGamesByLocation',
      ($5.ListGamesByLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByUser = $grpc.ClientMethod<$5.ListGamesByUserRequest, $5.ListGamesResponse>(
      '/game.GameService/ListGamesByUser',
      ($5.ListGamesByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByCourt = $grpc.ClientMethod<$5.ListGamesByCourtRequest, $5.ListGamesResponse>(
      '/game.GameService/ListGamesByCourt',
      ($5.ListGamesByCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByTeam = $grpc.ClientMethod<$5.ListGamesByTeamRequest, $5.ListGamesResponse>(
      '/game.GameService/ListGamesByTeam',
      ($5.ListGamesByTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ListGamesResponse.fromBuffer(value));
  static final _$createGame = $grpc.ClientMethod<$5.CreateGameRequest, $5.GameResponse>(
      '/game.GameService/CreateGame',
      ($5.CreateGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GameResponse.fromBuffer(value));
  static final _$createGameWithTeam = $grpc.ClientMethod<$5.CreateGameWithTeamRequest, $5.GameResponse>(
      '/game.GameService/CreateGameWithTeam',
      ($5.CreateGameWithTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GameResponse.fromBuffer(value));
  static final _$joinGame = $grpc.ClientMethod<$5.JoinGameRequest, $5.GameResponse>(
      '/game.GameService/JoinGame',
      ($5.JoinGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GameResponse.fromBuffer(value));
  static final _$startGame = $grpc.ClientMethod<$5.StartGameRequest, $5.GameResponse>(
      '/game.GameService/StartGame',
      ($5.StartGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GameResponse.fromBuffer(value));
  static final _$endGame = $grpc.ClientMethod<$5.EndGameRequest, $5.GameResponse>(
      '/game.GameService/EndGame',
      ($5.EndGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GameResponse.fromBuffer(value));
  static final _$cancelGame = $grpc.ClientMethod<$5.CancelGameRequest, $5.GameResponse>(
      '/game.GameService/CancelGame',
      ($5.CancelGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GameResponse.fromBuffer(value));
  static final _$addMedia = $grpc.ClientMethod<$1.File, $1.Media>(
      '/game.GameService/AddMedia',
      ($1.File value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Media.fromBuffer(value));

  GameServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.GameResponse> getGame($5.GetGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGame, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListGamesResponse> listGamesByLocation($5.ListGamesByLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListGamesResponse> listGamesByUser($5.ListGamesByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListGamesResponse> listGamesByCourt($5.ListGamesByCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByCourt, request, options: options);
  }

  $grpc.ResponseFuture<$5.ListGamesResponse> listGamesByTeam($5.ListGamesByTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByTeam, request, options: options);
  }

  $grpc.ResponseFuture<$5.GameResponse> createGame($5.CreateGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGame, request, options: options);
  }

  $grpc.ResponseFuture<$5.GameResponse> createGameWithTeam($5.CreateGameWithTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGameWithTeam, request, options: options);
  }

  $grpc.ResponseFuture<$5.GameResponse> joinGame($5.JoinGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinGame, request, options: options);
  }

  $grpc.ResponseFuture<$5.GameResponse> startGame($5.StartGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startGame, request, options: options);
  }

  $grpc.ResponseFuture<$5.GameResponse> endGame($5.EndGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$endGame, request, options: options);
  }

  $grpc.ResponseFuture<$5.GameResponse> cancelGame($5.CancelGameRequest request, {$grpc.CallOptions? options}) {
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
    $addMethod($grpc.ServiceMethod<$5.GetGameRequest, $5.GameResponse>(
        'GetGame',
        getGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetGameRequest.fromBuffer(value),
        ($5.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListGamesByLocationRequest, $5.ListGamesResponse>(
        'ListGamesByLocation',
        listGamesByLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListGamesByLocationRequest.fromBuffer(value),
        ($5.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListGamesByUserRequest, $5.ListGamesResponse>(
        'ListGamesByUser',
        listGamesByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListGamesByUserRequest.fromBuffer(value),
        ($5.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListGamesByCourtRequest, $5.ListGamesResponse>(
        'ListGamesByCourt',
        listGamesByCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListGamesByCourtRequest.fromBuffer(value),
        ($5.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ListGamesByTeamRequest, $5.ListGamesResponse>(
        'ListGamesByTeam',
        listGamesByTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListGamesByTeamRequest.fromBuffer(value),
        ($5.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateGameRequest, $5.GameResponse>(
        'CreateGame',
        createGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateGameRequest.fromBuffer(value),
        ($5.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateGameWithTeamRequest, $5.GameResponse>(
        'CreateGameWithTeam',
        createGameWithTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateGameWithTeamRequest.fromBuffer(value),
        ($5.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.JoinGameRequest, $5.GameResponse>(
        'JoinGame',
        joinGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.JoinGameRequest.fromBuffer(value),
        ($5.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.StartGameRequest, $5.GameResponse>(
        'StartGame',
        startGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.StartGameRequest.fromBuffer(value),
        ($5.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.EndGameRequest, $5.GameResponse>(
        'EndGame',
        endGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.EndGameRequest.fromBuffer(value),
        ($5.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CancelGameRequest, $5.GameResponse>(
        'CancelGame',
        cancelGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CancelGameRequest.fromBuffer(value),
        ($5.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File, $1.Media>(
        'AddMedia',
        addMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File.fromBuffer(value),
        ($1.Media value) => value.writeToBuffer()));
  }

  $async.Future<$5.GameResponse> getGame_Pre($grpc.ServiceCall call, $async.Future<$5.GetGameRequest> request) async {
    return getGame(call, await request);
  }

  $async.Future<$5.ListGamesResponse> listGamesByLocation_Pre($grpc.ServiceCall call, $async.Future<$5.ListGamesByLocationRequest> request) async {
    return listGamesByLocation(call, await request);
  }

  $async.Future<$5.ListGamesResponse> listGamesByUser_Pre($grpc.ServiceCall call, $async.Future<$5.ListGamesByUserRequest> request) async {
    return listGamesByUser(call, await request);
  }

  $async.Future<$5.ListGamesResponse> listGamesByCourt_Pre($grpc.ServiceCall call, $async.Future<$5.ListGamesByCourtRequest> request) async {
    return listGamesByCourt(call, await request);
  }

  $async.Future<$5.ListGamesResponse> listGamesByTeam_Pre($grpc.ServiceCall call, $async.Future<$5.ListGamesByTeamRequest> request) async {
    return listGamesByTeam(call, await request);
  }

  $async.Future<$5.GameResponse> createGame_Pre($grpc.ServiceCall call, $async.Future<$5.CreateGameRequest> request) async {
    return createGame(call, await request);
  }

  $async.Future<$5.GameResponse> createGameWithTeam_Pre($grpc.ServiceCall call, $async.Future<$5.CreateGameWithTeamRequest> request) async {
    return createGameWithTeam(call, await request);
  }

  $async.Future<$5.GameResponse> joinGame_Pre($grpc.ServiceCall call, $async.Future<$5.JoinGameRequest> request) async {
    return joinGame(call, await request);
  }

  $async.Future<$5.GameResponse> startGame_Pre($grpc.ServiceCall call, $async.Future<$5.StartGameRequest> request) async {
    return startGame(call, await request);
  }

  $async.Future<$5.GameResponse> endGame_Pre($grpc.ServiceCall call, $async.Future<$5.EndGameRequest> request) async {
    return endGame(call, await request);
  }

  $async.Future<$5.GameResponse> cancelGame_Pre($grpc.ServiceCall call, $async.Future<$5.CancelGameRequest> request) async {
    return cancelGame(call, await request);
  }

  $async.Future<$1.Media> addMedia_Pre($grpc.ServiceCall call, $async.Future<$1.File> request) async {
    return addMedia(call, await request);
  }

  $async.Future<$5.GameResponse> getGame($grpc.ServiceCall call, $5.GetGameRequest request);
  $async.Future<$5.ListGamesResponse> listGamesByLocation($grpc.ServiceCall call, $5.ListGamesByLocationRequest request);
  $async.Future<$5.ListGamesResponse> listGamesByUser($grpc.ServiceCall call, $5.ListGamesByUserRequest request);
  $async.Future<$5.ListGamesResponse> listGamesByCourt($grpc.ServiceCall call, $5.ListGamesByCourtRequest request);
  $async.Future<$5.ListGamesResponse> listGamesByTeam($grpc.ServiceCall call, $5.ListGamesByTeamRequest request);
  $async.Future<$5.GameResponse> createGame($grpc.ServiceCall call, $5.CreateGameRequest request);
  $async.Future<$5.GameResponse> createGameWithTeam($grpc.ServiceCall call, $5.CreateGameWithTeamRequest request);
  $async.Future<$5.GameResponse> joinGame($grpc.ServiceCall call, $5.JoinGameRequest request);
  $async.Future<$5.GameResponse> startGame($grpc.ServiceCall call, $5.StartGameRequest request);
  $async.Future<$5.GameResponse> endGame($grpc.ServiceCall call, $5.EndGameRequest request);
  $async.Future<$5.GameResponse> cancelGame($grpc.ServiceCall call, $5.CancelGameRequest request);
  $async.Future<$1.Media> addMedia($grpc.ServiceCall call, $1.File request);
}
