//
//  Generated code. Do not modify.
//  source: teampb.proto
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
import 'teampb.pb.dart' as $4;

export 'teampb.pb.dart';

@$pb.GrpcServiceName('team.TeamService')
class TeamServiceClient extends $grpc.Client {
  static final _$getTeam = $grpc.ClientMethod<$1.GetByIdRequest, $4.TeamResponse>(
      '/team.TeamService/GetTeam',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$getTeamWithPlayers = $grpc.ClientMethod<$1.GetByIdRequest, $4.TeamWithPlayers>(
      '/team.TeamService/GetTeamWithPlayers',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamWithPlayers.fromBuffer(value));
  static final _$listTeam = $grpc.ClientMethod<$4.ListTeamRequest, $4.ListTeamResponse>(
      '/team.TeamService/ListTeam',
      ($4.ListTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListTeamResponse.fromBuffer(value));
  static final _$createTeam = $grpc.ClientMethod<$4.CreateTeamRequest, $4.TeamResponse>(
      '/team.TeamService/CreateTeam',
      ($4.CreateTeamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$updateTeam = $grpc.ClientMethod<$4.Team, $4.TeamResponse>(
      '/team.TeamService/UpdateTeam',
      ($4.Team value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$updateTeamAvatar = $grpc.ClientMethod<$1.File, $4.TeamResponse>(
      '/team.TeamService/UpdateTeamAvatar',
      ($1.File value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$invitePlayer = $grpc.ClientMethod<$4.InvitePlayerRequest, $1.SuccessResponse>(
      '/team.TeamService/InvitePlayer',
      ($4.InvitePlayerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SuccessResponse.fromBuffer(value));
  static final _$acceptInvite = $grpc.ClientMethod<$4.AcceptInviteRequest, $4.TeamResponse>(
      '/team.TeamService/AcceptInvite',
      ($4.AcceptInviteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$assignAdmin = $grpc.ClientMethod<$1.GetByIdRequest, $4.TeamResponse>(
      '/team.TeamService/AssignAdmin',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$leaveTeam = $grpc.ClientMethod<$1.Empty, $4.TeamResponse>(
      '/team.TeamService/LeaveTeam',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$kickPlayer = $grpc.ClientMethod<$1.GetByIdRequest, $4.TeamResponse>(
      '/team.TeamService/KickPlayer',
      ($1.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TeamResponse.fromBuffer(value));
  static final _$deleteTeam = $grpc.ClientMethod<$1.Empty, $1.SuccessResponse>(
      '/team.TeamService/DeleteTeam',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SuccessResponse.fromBuffer(value));

  TeamServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.TeamResponse> getTeam($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTeam, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamWithPlayers> getTeamWithPlayers($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTeamWithPlayers, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListTeamResponse> listTeam($4.ListTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listTeam, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamResponse> createTeam($4.CreateTeamRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTeam, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamResponse> updateTeam($4.Team request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTeam, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamResponse> updateTeamAvatar($1.File request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTeamAvatar, request, options: options);
  }

  $grpc.ResponseFuture<$1.SuccessResponse> invitePlayer($4.InvitePlayerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invitePlayer, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamResponse> acceptInvite($4.AcceptInviteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptInvite, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamResponse> assignAdmin($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamResponse> leaveTeam($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaveTeam, request, options: options);
  }

  $grpc.ResponseFuture<$4.TeamResponse> kickPlayer($1.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$kickPlayer, request, options: options);
  }

  $grpc.ResponseFuture<$1.SuccessResponse> deleteTeam($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTeam, request, options: options);
  }
}

@$pb.GrpcServiceName('team.TeamService')
abstract class TeamServiceBase extends $grpc.Service {
  $core.String get $name => 'team.TeamService';

  TeamServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $4.TeamResponse>(
        'GetTeam',
        getTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $4.TeamWithPlayers>(
        'GetTeamWithPlayers',
        getTeamWithPlayers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($4.TeamWithPlayers value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListTeamRequest, $4.ListTeamResponse>(
        'ListTeam',
        listTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListTeamRequest.fromBuffer(value),
        ($4.ListTeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateTeamRequest, $4.TeamResponse>(
        'CreateTeam',
        createTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateTeamRequest.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Team, $4.TeamResponse>(
        'UpdateTeam',
        updateTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Team.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File, $4.TeamResponse>(
        'UpdateTeamAvatar',
        updateTeamAvatar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.InvitePlayerRequest, $1.SuccessResponse>(
        'InvitePlayer',
        invitePlayer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.InvitePlayerRequest.fromBuffer(value),
        ($1.SuccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AcceptInviteRequest, $4.TeamResponse>(
        'AcceptInvite',
        acceptInvite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AcceptInviteRequest.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $4.TeamResponse>(
        'AssignAdmin',
        assignAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $4.TeamResponse>(
        'LeaveTeam',
        leaveTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdRequest, $4.TeamResponse>(
        'KickPlayer',
        kickPlayer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdRequest.fromBuffer(value),
        ($4.TeamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.SuccessResponse>(
        'DeleteTeam',
        deleteTeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.SuccessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.TeamResponse> getTeam_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return getTeam(call, await request);
  }

  $async.Future<$4.TeamWithPlayers> getTeamWithPlayers_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return getTeamWithPlayers(call, await request);
  }

  $async.Future<$4.ListTeamResponse> listTeam_Pre($grpc.ServiceCall call, $async.Future<$4.ListTeamRequest> request) async {
    return listTeam(call, await request);
  }

  $async.Future<$4.TeamResponse> createTeam_Pre($grpc.ServiceCall call, $async.Future<$4.CreateTeamRequest> request) async {
    return createTeam(call, await request);
  }

  $async.Future<$4.TeamResponse> updateTeam_Pre($grpc.ServiceCall call, $async.Future<$4.Team> request) async {
    return updateTeam(call, await request);
  }

  $async.Future<$4.TeamResponse> updateTeamAvatar_Pre($grpc.ServiceCall call, $async.Future<$1.File> request) async {
    return updateTeamAvatar(call, await request);
  }

  $async.Future<$1.SuccessResponse> invitePlayer_Pre($grpc.ServiceCall call, $async.Future<$4.InvitePlayerRequest> request) async {
    return invitePlayer(call, await request);
  }

  $async.Future<$4.TeamResponse> acceptInvite_Pre($grpc.ServiceCall call, $async.Future<$4.AcceptInviteRequest> request) async {
    return acceptInvite(call, await request);
  }

  $async.Future<$4.TeamResponse> assignAdmin_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return assignAdmin(call, await request);
  }

  $async.Future<$4.TeamResponse> leaveTeam_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return leaveTeam(call, await request);
  }

  $async.Future<$4.TeamResponse> kickPlayer_Pre($grpc.ServiceCall call, $async.Future<$1.GetByIdRequest> request) async {
    return kickPlayer(call, await request);
  }

  $async.Future<$1.SuccessResponse> deleteTeam_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return deleteTeam(call, await request);
  }

  $async.Future<$4.TeamResponse> getTeam($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$4.TeamWithPlayers> getTeamWithPlayers($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$4.ListTeamResponse> listTeam($grpc.ServiceCall call, $4.ListTeamRequest request);
  $async.Future<$4.TeamResponse> createTeam($grpc.ServiceCall call, $4.CreateTeamRequest request);
  $async.Future<$4.TeamResponse> updateTeam($grpc.ServiceCall call, $4.Team request);
  $async.Future<$4.TeamResponse> updateTeamAvatar($grpc.ServiceCall call, $1.File request);
  $async.Future<$1.SuccessResponse> invitePlayer($grpc.ServiceCall call, $4.InvitePlayerRequest request);
  $async.Future<$4.TeamResponse> acceptInvite($grpc.ServiceCall call, $4.AcceptInviteRequest request);
  $async.Future<$4.TeamResponse> assignAdmin($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$4.TeamResponse> leaveTeam($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$4.TeamResponse> kickPlayer($grpc.ServiceCall call, $1.GetByIdRequest request);
  $async.Future<$1.SuccessResponse> deleteTeam($grpc.ServiceCall call, $1.Empty request);
}
