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
import 'gamepb.pb.dart' as $8;

export 'gamepb.pb.dart';

@$pb.GrpcServiceName('game.GameService')
class GameServiceClient extends $grpc.Client {
  static final _$getGame = $grpc.ClientMethod<$8.GetGameRequest, $8.GameResponse>(
      '/game.GameService/GetGame',
      ($8.GetGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameResponse.fromBuffer(value));
  static final _$listGamesByLocation = $grpc.ClientMethod<$8.ListGamesByLocationRequest, $8.ListGamesResponse>(
      '/game.GameService/ListGamesByLocation',
      ($8.ListGamesByLocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByUser = $grpc.ClientMethod<$8.ListGamesByUserRequest, $8.ListGamesResponse>(
      '/game.GameService/ListGamesByUser',
      ($8.ListGamesByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByCourt = $grpc.ClientMethod<$8.ListGamesByCourtRequest, $8.ListGamesResponse>(
      '/game.GameService/ListGamesByCourt',
      ($8.ListGamesByCourtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListGamesResponse.fromBuffer(value));
  static final _$listGamesByTeam = $grpc.ClientMethod<$8.ListGamesByTeamRequest, $8.ListGamesResponse>(
      '/game.GameService/ListGamesByTeam',
      ($8.ListGamesByTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ListGamesResponse.fromBuffer(value));
  static final _$createGame = $grpc.ClientMethod<$8.CreateGameRequest, $8.GameIdResponse>(
      '/game.GameService/CreateGame',
      ($8.CreateGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameIdResponse.fromBuffer(value));
  static final _$createGameWithTeam = $grpc.ClientMethod<$8.CreateGameWithTeamRequest, $8.GameIdResponse>(
      '/game.GameService/CreateGameWithTeam',
      ($8.CreateGameWithTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameIdResponse.fromBuffer(value));
  static final _$joinGame = $grpc.ClientMethod<$8.JoinGameRequest, $8.GameIdResponse>(
      '/game.GameService/JoinGame',
      ($8.JoinGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameIdResponse.fromBuffer(value));
  static final _$startGame = $grpc.ClientMethod<$8.StartGameRequest, $8.GameIdResponse>(
      '/game.GameService/StartGame',
      ($8.StartGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameIdResponse.fromBuffer(value));
  static final _$endGame = $grpc.ClientMethod<$8.EndGameRequest, $8.GameIdResponse>(
      '/game.GameService/EndGame',
      ($8.EndGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameIdResponse.fromBuffer(value));
  static final _$cancelGame = $grpc.ClientMethod<$8.CancelGameRequest, $8.GameIdResponse>(
      '/game.GameService/CancelGame',
      ($8.CancelGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameIdResponse.fromBuffer(value));
  static final _$leaveGame = $grpc.ClientMethod<$8.LeaveGameRequest, $8.GameIdResponse>(
      '/game.GameService/LeaveGame',
      ($8.LeaveGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GameIdResponse.fromBuffer(value));
  static final _$addMedia = $grpc.ClientMethod<$1.File, $1.Media>(
      '/game.GameService/AddMedia',
      ($1.File value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Media.fromBuffer(value));

  GameServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.GameResponse> getGame($8.GetGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getGame, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListGamesResponse> listGamesByLocation($8.ListGamesByLocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByLocation, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListGamesResponse> listGamesByUser($8.ListGamesByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListGamesResponse> listGamesByCourt($8.ListGamesByCourtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByCourt, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListGamesResponse> listGamesByTeam($8.ListGamesByTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listGamesByTeam, request, options: options);
  }

  $grpc.ResponseFuture<$8.GameIdResponse> createGame($8.CreateGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGame, request, options: options);
  }

  $grpc.ResponseFuture<$8.GameIdResponse> createGameWithTeam($8.CreateGameWithTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGameWithTeam, request, options: options);
  }

  $grpc.ResponseFuture<$8.GameIdResponse> joinGame($8.JoinGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinGame, request, options: options);
  }

  $grpc.ResponseFuture<$8.GameIdResponse> startGame($8.StartGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startGame, request, options: options);
  }

  $grpc.ResponseFuture<$8.GameIdResponse> endGame($8.EndGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$endGame, request, options: options);
  }

  $grpc.ResponseFuture<$8.GameIdResponse> cancelGame($8.CancelGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelGame, request, options: options);
  }

  $grpc.ResponseFuture<$8.GameIdResponse> leaveGame($8.LeaveGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaveGame, request, options: options);
  }

  $grpc.ResponseFuture<$1.Media> addMedia($1.File request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addMedia, request, options: options);
  }
}

@$pb.GrpcServiceName('game.GameService')
abstract class GameServiceBase extends $grpc.Service {
  $core.String get $name => 'game.GameService';

  GameServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.GetGameRequest, $8.GameResponse>(
        'GetGame',
        getGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetGameRequest.fromBuffer(value),
        ($8.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListGamesByLocationRequest, $8.ListGamesResponse>(
        'ListGamesByLocation',
        listGamesByLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListGamesByLocationRequest.fromBuffer(value),
        ($8.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListGamesByUserRequest, $8.ListGamesResponse>(
        'ListGamesByUser',
        listGamesByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListGamesByUserRequest.fromBuffer(value),
        ($8.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListGamesByCourtRequest, $8.ListGamesResponse>(
        'ListGamesByCourt',
        listGamesByCourt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListGamesByCourtRequest.fromBuffer(value),
        ($8.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ListGamesByTeamRequest, $8.ListGamesResponse>(
        'ListGamesByTeam',
        listGamesByTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ListGamesByTeamRequest.fromBuffer(value),
        ($8.ListGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateGameRequest, $8.GameIdResponse>(
        'CreateGame',
        createGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateGameRequest.fromBuffer(value),
        ($8.GameIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateGameWithTeamRequest, $8.GameIdResponse>(
        'CreateGameWithTeam',
        createGameWithTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateGameWithTeamRequest.fromBuffer(value),
        ($8.GameIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.JoinGameRequest, $8.GameIdResponse>(
        'JoinGame',
        joinGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.JoinGameRequest.fromBuffer(value),
        ($8.GameIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.StartGameRequest, $8.GameIdResponse>(
        'StartGame',
        startGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.StartGameRequest.fromBuffer(value),
        ($8.GameIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.EndGameRequest, $8.GameIdResponse>(
        'EndGame',
        endGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.EndGameRequest.fromBuffer(value),
        ($8.GameIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CancelGameRequest, $8.GameIdResponse>(
        'CancelGame',
        cancelGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CancelGameRequest.fromBuffer(value),
        ($8.GameIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.LeaveGameRequest, $8.GameIdResponse>(
        'LeaveGame',
        leaveGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.LeaveGameRequest.fromBuffer(value),
        ($8.GameIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File, $1.Media>(
        'AddMedia',
        addMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File.fromBuffer(value),
        ($1.Media value) => value.writeToBuffer()));
  }

  $async.Future<$8.GameResponse> getGame_Pre($grpc.ServiceCall call, $async.Future<$8.GetGameRequest> request) async {
    return getGame(call, await request);
  }

  $async.Future<$8.ListGamesResponse> listGamesByLocation_Pre($grpc.ServiceCall call, $async.Future<$8.ListGamesByLocationRequest> request) async {
    return listGamesByLocation(call, await request);
  }

  $async.Future<$8.ListGamesResponse> listGamesByUser_Pre($grpc.ServiceCall call, $async.Future<$8.ListGamesByUserRequest> request) async {
    return listGamesByUser(call, await request);
  }

  $async.Future<$8.ListGamesResponse> listGamesByCourt_Pre($grpc.ServiceCall call, $async.Future<$8.ListGamesByCourtRequest> request) async {
    return listGamesByCourt(call, await request);
  }

  $async.Future<$8.ListGamesResponse> listGamesByTeam_Pre($grpc.ServiceCall call, $async.Future<$8.ListGamesByTeamRequest> request) async {
    return listGamesByTeam(call, await request);
  }

  $async.Future<$8.GameIdResponse> createGame_Pre($grpc.ServiceCall call, $async.Future<$8.CreateGameRequest> request) async {
    return createGame(call, await request);
  }

  $async.Future<$8.GameIdResponse> createGameWithTeam_Pre($grpc.ServiceCall call, $async.Future<$8.CreateGameWithTeamRequest> request) async {
    return createGameWithTeam(call, await request);
  }

  $async.Future<$8.GameIdResponse> joinGame_Pre($grpc.ServiceCall call, $async.Future<$8.JoinGameRequest> request) async {
    return joinGame(call, await request);
  }

  $async.Future<$8.GameIdResponse> startGame_Pre($grpc.ServiceCall call, $async.Future<$8.StartGameRequest> request) async {
    return startGame(call, await request);
  }

  $async.Future<$8.GameIdResponse> endGame_Pre($grpc.ServiceCall call, $async.Future<$8.EndGameRequest> request) async {
    return endGame(call, await request);
  }

  $async.Future<$8.GameIdResponse> cancelGame_Pre($grpc.ServiceCall call, $async.Future<$8.CancelGameRequest> request) async {
    return cancelGame(call, await request);
  }

  $async.Future<$8.GameIdResponse> leaveGame_Pre($grpc.ServiceCall call, $async.Future<$8.LeaveGameRequest> request) async {
    return leaveGame(call, await request);
  }

  $async.Future<$1.Media> addMedia_Pre($grpc.ServiceCall call, $async.Future<$1.File> request) async {
    return addMedia(call, await request);
  }

  $async.Future<$8.GameResponse> getGame($grpc.ServiceCall call, $8.GetGameRequest request);
  $async.Future<$8.ListGamesResponse> listGamesByLocation($grpc.ServiceCall call, $8.ListGamesByLocationRequest request);
  $async.Future<$8.ListGamesResponse> listGamesByUser($grpc.ServiceCall call, $8.ListGamesByUserRequest request);
  $async.Future<$8.ListGamesResponse> listGamesByCourt($grpc.ServiceCall call, $8.ListGamesByCourtRequest request);
  $async.Future<$8.ListGamesResponse> listGamesByTeam($grpc.ServiceCall call, $8.ListGamesByTeamRequest request);
  $async.Future<$8.GameIdResponse> createGame($grpc.ServiceCall call, $8.CreateGameRequest request);
  $async.Future<$8.GameIdResponse> createGameWithTeam($grpc.ServiceCall call, $8.CreateGameWithTeamRequest request);
  $async.Future<$8.GameIdResponse> joinGame($grpc.ServiceCall call, $8.JoinGameRequest request);
  $async.Future<$8.GameIdResponse> startGame($grpc.ServiceCall call, $8.StartGameRequest request);
  $async.Future<$8.GameIdResponse> endGame($grpc.ServiceCall call, $8.EndGameRequest request);
  $async.Future<$8.GameIdResponse> cancelGame($grpc.ServiceCall call, $8.CancelGameRequest request);
  $async.Future<$8.GameIdResponse> leaveGame($grpc.ServiceCall call, $8.LeaveGameRequest request);
  $async.Future<$1.Media> addMedia($grpc.ServiceCall call, $1.File request);
}
