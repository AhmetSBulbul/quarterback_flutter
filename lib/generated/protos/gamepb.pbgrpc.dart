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
import 'gamepb.pb.dart' as $6;

export 'gamepb.pb.dart';

@$pb.GrpcServiceName('game.GameService')
class GameServiceClient extends $grpc.Client {
  static final _$getGame = $grpc.ClientMethod<$6.GetGameRequest, $6.GameResponse>(
      '/game.GameService/GetGame',
      ($6.GetGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GameResponse.fromBuffer(value));
  static final _$listGamesByLocation = $grpc.ClientMethod<$6.ListGamesByLocationRequest, $6.ListGamesResponse>(
      '/game.GameService/ListGamesByLocation',
      ($6.ListGamesByLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByUser = $grpc.ClientMethod<$6.ListGamesByUserRequest, $6.ListGamesResponse>(
      '/game.GameService/ListGamesByUser',
      ($6.ListGamesByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByCourt = $grpc.ClientMethod<$6.ListGamesByCourtRequest, $6.ListGamesResponse>(
      '/game.GameService/ListGamesByCourt',
      ($6.ListGamesByCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByTeam = $grpc.ClientMethod<$6.ListGamesByTeamRequest, $6.ListGamesResponse>(
      '/game.GameService/ListGamesByTeam',
      ($6.ListGamesByTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ListGamesResponse.fromBuffer(value));
  static final _$createGame = $grpc.ClientMethod<$6.CreateGameRequest, $6.GameResponse>(
      '/game.GameService/CreateGame',
      ($6.CreateGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GameResponse.fromBuffer(value));
  static final _$createGameWithTeam = $grpc.ClientMethod<$6.CreateGameWithTeamRequest, $6.GameResponse>(
      '/game.GameService/CreateGameWithTeam',
      ($6.CreateGameWithTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GameResponse.fromBuffer(value));
  static final _$joinGame = $grpc.ClientMethod<$6.JoinGameRequest, $6.GameResponse>(
      '/game.GameService/JoinGame',
      ($6.JoinGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GameResponse.fromBuffer(value));
  static final _$startGame = $grpc.ClientMethod<$6.StartGameRequest, $6.GameResponse>(
      '/game.GameService/StartGame',
      ($6.StartGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GameResponse.fromBuffer(value));
  static final _$endGame = $grpc.ClientMethod<$6.EndGameRequest, $6.GameResponse>(
      '/game.GameService/EndGame',
      ($6.EndGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GameResponse.fromBuffer(value));
  static final _$cancelGame = $grpc.ClientMethod<$6.CancelGameRequest, $6.GameResponse>(
      '/game.GameService/CancelGame',
      ($6.CancelGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GameResponse.fromBuffer(value));
  static final _$addMedia = $grpc.ClientMethod<$1.File, $1.Media>(
      '/game.GameService/AddMedia',
      ($1.File value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Media.fromBuffer(value));

  GameServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.GameResponse> getGame($6.GetGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGame, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListGamesResponse> listGamesByLocation($6.ListGamesByLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByLocation, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListGamesResponse> listGamesByUser($6.ListGamesByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListGamesResponse> listGamesByCourt($6.ListGamesByCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByCourt, request, options: options);
  }

  $grpc.ResponseFuture<$6.ListGamesResponse> listGamesByTeam($6.ListGamesByTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByTeam, request, options: options);
  }

  $grpc.ResponseFuture<$6.GameResponse> createGame($6.CreateGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGame, request, options: options);
  }

  $grpc.ResponseFuture<$6.GameResponse> createGameWithTeam($6.CreateGameWithTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGameWithTeam, request, options: options);
  }

  $grpc.ResponseFuture<$6.GameResponse> joinGame($6.JoinGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinGame, request, options: options);
  }

  $grpc.ResponseFuture<$6.GameResponse> startGame($6.StartGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startGame, request, options: options);
  }

  $grpc.ResponseFuture<$6.GameResponse> endGame($6.EndGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$endGame, request, options: options);
  }

  $grpc.ResponseFuture<$6.GameResponse> cancelGame($6.CancelGameRequest request, {$grpc.CallOptions? options}) {
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
    $addMethod($grpc.ServiceMethod<$6.GetGameRequest, $6.GameResponse>(
        'GetGame',
        getGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetGameRequest.fromBuffer(value),
        ($6.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListGamesByLocationRequest, $6.ListGamesResponse>(
        'ListGamesByLocation',
        listGamesByLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListGamesByLocationRequest.fromBuffer(value),
        ($6.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListGamesByUserRequest, $6.ListGamesResponse>(
        'ListGamesByUser',
        listGamesByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListGamesByUserRequest.fromBuffer(value),
        ($6.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListGamesByCourtRequest, $6.ListGamesResponse>(
        'ListGamesByCourt',
        listGamesByCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListGamesByCourtRequest.fromBuffer(value),
        ($6.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ListGamesByTeamRequest, $6.ListGamesResponse>(
        'ListGamesByTeam',
        listGamesByTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ListGamesByTeamRequest.fromBuffer(value),
        ($6.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateGameRequest, $6.GameResponse>(
        'CreateGame',
        createGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateGameRequest.fromBuffer(value),
        ($6.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateGameWithTeamRequest, $6.GameResponse>(
        'CreateGameWithTeam',
        createGameWithTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateGameWithTeamRequest.fromBuffer(value),
        ($6.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.JoinGameRequest, $6.GameResponse>(
        'JoinGame',
        joinGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.JoinGameRequest.fromBuffer(value),
        ($6.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.StartGameRequest, $6.GameResponse>(
        'StartGame',
        startGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.StartGameRequest.fromBuffer(value),
        ($6.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.EndGameRequest, $6.GameResponse>(
        'EndGame',
        endGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.EndGameRequest.fromBuffer(value),
        ($6.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CancelGameRequest, $6.GameResponse>(
        'CancelGame',
        cancelGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CancelGameRequest.fromBuffer(value),
        ($6.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File, $1.Media>(
        'AddMedia',
        addMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File.fromBuffer(value),
        ($1.Media value) => value.writeToBuffer()));
  }

  $async.Future<$6.GameResponse> getGame_Pre($grpc.ServiceCall call, $async.Future<$6.GetGameRequest> request) async {
    return getGame(call, await request);
  }

  $async.Future<$6.ListGamesResponse> listGamesByLocation_Pre($grpc.ServiceCall call, $async.Future<$6.ListGamesByLocationRequest> request) async {
    return listGamesByLocation(call, await request);
  }

  $async.Future<$6.ListGamesResponse> listGamesByUser_Pre($grpc.ServiceCall call, $async.Future<$6.ListGamesByUserRequest> request) async {
    return listGamesByUser(call, await request);
  }

  $async.Future<$6.ListGamesResponse> listGamesByCourt_Pre($grpc.ServiceCall call, $async.Future<$6.ListGamesByCourtRequest> request) async {
    return listGamesByCourt(call, await request);
  }

  $async.Future<$6.ListGamesResponse> listGamesByTeam_Pre($grpc.ServiceCall call, $async.Future<$6.ListGamesByTeamRequest> request) async {
    return listGamesByTeam(call, await request);
  }

  $async.Future<$6.GameResponse> createGame_Pre($grpc.ServiceCall call, $async.Future<$6.CreateGameRequest> request) async {
    return createGame(call, await request);
  }

  $async.Future<$6.GameResponse> createGameWithTeam_Pre($grpc.ServiceCall call, $async.Future<$6.CreateGameWithTeamRequest> request) async {
    return createGameWithTeam(call, await request);
  }

  $async.Future<$6.GameResponse> joinGame_Pre($grpc.ServiceCall call, $async.Future<$6.JoinGameRequest> request) async {
    return joinGame(call, await request);
  }

  $async.Future<$6.GameResponse> startGame_Pre($grpc.ServiceCall call, $async.Future<$6.StartGameRequest> request) async {
    return startGame(call, await request);
  }

  $async.Future<$6.GameResponse> endGame_Pre($grpc.ServiceCall call, $async.Future<$6.EndGameRequest> request) async {
    return endGame(call, await request);
  }

  $async.Future<$6.GameResponse> cancelGame_Pre($grpc.ServiceCall call, $async.Future<$6.CancelGameRequest> request) async {
    return cancelGame(call, await request);
  }

  $async.Future<$1.Media> addMedia_Pre($grpc.ServiceCall call, $async.Future<$1.File> request) async {
    return addMedia(call, await request);
  }

  $async.Future<$6.GameResponse> getGame($grpc.ServiceCall call, $6.GetGameRequest request);
  $async.Future<$6.ListGamesResponse> listGamesByLocation($grpc.ServiceCall call, $6.ListGamesByLocationRequest request);
  $async.Future<$6.ListGamesResponse> listGamesByUser($grpc.ServiceCall call, $6.ListGamesByUserRequest request);
  $async.Future<$6.ListGamesResponse> listGamesByCourt($grpc.ServiceCall call, $6.ListGamesByCourtRequest request);
  $async.Future<$6.ListGamesResponse> listGamesByTeam($grpc.ServiceCall call, $6.ListGamesByTeamRequest request);
  $async.Future<$6.GameResponse> createGame($grpc.ServiceCall call, $6.CreateGameRequest request);
  $async.Future<$6.GameResponse> createGameWithTeam($grpc.ServiceCall call, $6.CreateGameWithTeamRequest request);
  $async.Future<$6.GameResponse> joinGame($grpc.ServiceCall call, $6.JoinGameRequest request);
  $async.Future<$6.GameResponse> startGame($grpc.ServiceCall call, $6.StartGameRequest request);
  $async.Future<$6.GameResponse> endGame($grpc.ServiceCall call, $6.EndGameRequest request);
  $async.Future<$6.GameResponse> cancelGame($grpc.ServiceCall call, $6.CancelGameRequest request);
  $async.Future<$1.Media> addMedia($grpc.ServiceCall call, $1.File request);
}
