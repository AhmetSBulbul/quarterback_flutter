//
//  Generated code. Do not modify.
//  source: gamepb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getGameRequestDescriptor instead')
const GetGameRequest$json = {
  '1': 'GetGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 5, '10': 'gameId'},
  ],
};

/// Descriptor for `GetGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGameRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRHYW1lUmVxdWVzdBIWCgZnYW1lSWQYASABKAVSBmdhbWVJZA==');

@$core.Deprecated('Use listGamesByLocationRequestDescriptor instead')
const ListGamesByLocationRequest$json = {
  '1': 'ListGamesByLocationRequest',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.common.Location', '10': 'location'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListGamesByLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGamesByLocationRequestDescriptor = $convert.base64Decode(
    'ChpMaXN0R2FtZXNCeUxvY2F0aW9uUmVxdWVzdBIsCghsb2NhdGlvbhgBIAEoCzIQLmNvbW1vbi'
    '5Mb2NhdGlvblIIbG9jYXRpb24SOQoKcGFnaW5hdGlvbhgCIAEoCzIZLmNvbW1vbi5QYWdpbmF0'
    'aW9uUmVxdWVzdFIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use listGamesByUserRequestDescriptor instead')
const ListGamesByUserRequest$json = {
  '1': 'ListGamesByUserRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListGamesByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGamesByUserRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0R2FtZXNCeVVzZXJSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoBVIGdXNlcklkEjkKCnBhZ2'
    'luYXRpb24YAiABKAsyGS5jb21tb24uUGFnaW5hdGlvblJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use listGamesByCourtRequestDescriptor instead')
const ListGamesByCourtRequest$json = {
  '1': 'ListGamesByCourtRequest',
  '2': [
    {'1': 'courtId', '3': 1, '4': 1, '5': 5, '10': 'courtId'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListGamesByCourtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGamesByCourtRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0R2FtZXNCeUNvdXJ0UmVxdWVzdBIYCgdjb3VydElkGAEgASgFUgdjb3VydElkEjkKCn'
    'BhZ2luYXRpb24YAiABKAsyGS5jb21tb24uUGFnaW5hdGlvblJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use listGamesByTeamRequestDescriptor instead')
const ListGamesByTeamRequest$json = {
  '1': 'ListGamesByTeamRequest',
  '2': [
    {'1': 'teamId', '3': 1, '4': 1, '5': 5, '10': 'teamId'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListGamesByTeamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGamesByTeamRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0R2FtZXNCeVRlYW1SZXF1ZXN0EhYKBnRlYW1JZBgBIAEoBVIGdGVhbUlkEjkKCnBhZ2'
    'luYXRpb24YAiABKAsyGS5jb21tb24uUGFnaW5hdGlvblJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use listGamesResponseDescriptor instead')
const ListGamesResponse$json = {
  '1': 'ListGamesResponse',
  '2': [
    {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.game.Game', '10': 'games'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `ListGamesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGamesResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0R2FtZXNSZXNwb25zZRIgCgVnYW1lcxgBIAMoCzIKLmdhbWUuR2FtZVIFZ2FtZXMSOg'
    'oKcGFnaW5hdGlvbhgCIAEoCzIaLmNvbW1vbi5QYWdpbmF0aW9uUmVzcG9uc2VSCnBhZ2luYXRp'
    'b24=');

@$core.Deprecated('Use createGameRequestDescriptor instead')
const CreateGameRequest$json = {
  '1': 'CreateGameRequest',
  '2': [
    {'1': 'courtId', '3': 1, '4': 1, '5': 5, '10': 'courtId'},
  ],
};

/// Descriptor for `CreateGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGameRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVHYW1lUmVxdWVzdBIYCgdjb3VydElkGAEgASgFUgdjb3VydElk');

@$core.Deprecated('Use gameIdResponseDescriptor instead')
const GameIdResponse$json = {
  '1': 'GameIdResponse',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 5, '10': 'gameId'},
  ],
};

/// Descriptor for `GameIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameIdResponseDescriptor = $convert.base64Decode(
    'Cg5HYW1lSWRSZXNwb25zZRIWCgZnYW1lSWQYASABKAVSBmdhbWVJZA==');

@$core.Deprecated('Use createGameWithTeamRequestDescriptor instead')
const CreateGameWithTeamRequest$json = {
  '1': 'CreateGameWithTeamRequest',
  '2': [
    {'1': 'courtId', '3': 1, '4': 1, '5': 5, '10': 'courtId'},
    {'1': 'awayTeamId', '3': 2, '4': 1, '5': 5, '10': 'awayTeamId'},
  ],
};

/// Descriptor for `CreateGameWithTeamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGameWithTeamRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVHYW1lV2l0aFRlYW1SZXF1ZXN0EhgKB2NvdXJ0SWQYASABKAVSB2NvdXJ0SWQSHg'
    'oKYXdheVRlYW1JZBgCIAEoBVIKYXdheVRlYW1JZA==');

@$core.Deprecated('Use gameResponseDescriptor instead')
const GameResponse$json = {
  '1': 'GameResponse',
  '2': [
    {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.game.Game', '10': 'game'},
  ],
};

/// Descriptor for `GameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameResponseDescriptor = $convert.base64Decode(
    'CgxHYW1lUmVzcG9uc2USHgoEZ2FtZRgBIAEoCzIKLmdhbWUuR2FtZVIEZ2FtZQ==');

@$core.Deprecated('Use joinGameRequestDescriptor instead')
const JoinGameRequest$json = {
  '1': 'JoinGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 5, '10': 'gameId'},
    {'1': 'isHomeSide', '3': 2, '4': 1, '5': 8, '10': 'isHomeSide'},
  ],
};

/// Descriptor for `JoinGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinGameRequestDescriptor = $convert.base64Decode(
    'Cg9Kb2luR2FtZVJlcXVlc3QSFgoGZ2FtZUlkGAEgASgFUgZnYW1lSWQSHgoKaXNIb21lU2lkZR'
    'gCIAEoCFIKaXNIb21lU2lkZQ==');

@$core.Deprecated('Use startGameRequestDescriptor instead')
const StartGameRequest$json = {
  '1': 'StartGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 5, '10': 'gameId'},
  ],
};

/// Descriptor for `StartGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startGameRequestDescriptor = $convert.base64Decode(
    'ChBTdGFydEdhbWVSZXF1ZXN0EhYKBmdhbWVJZBgBIAEoBVIGZ2FtZUlk');

@$core.Deprecated('Use endGameRequestDescriptor instead')
const EndGameRequest$json = {
  '1': 'EndGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 5, '10': 'gameId'},
    {'1': 'homeScore', '3': 2, '4': 1, '5': 5, '10': 'homeScore'},
    {'1': 'awayScore', '3': 3, '4': 1, '5': 5, '10': 'awayScore'},
  ],
};

/// Descriptor for `EndGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endGameRequestDescriptor = $convert.base64Decode(
    'Cg5FbmRHYW1lUmVxdWVzdBIWCgZnYW1lSWQYASABKAVSBmdhbWVJZBIcCglob21lU2NvcmUYAi'
    'ABKAVSCWhvbWVTY29yZRIcCglhd2F5U2NvcmUYAyABKAVSCWF3YXlTY29yZQ==');

@$core.Deprecated('Use cancelGameRequestDescriptor instead')
const CancelGameRequest$json = {
  '1': 'CancelGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 5, '10': 'gameId'},
  ],
};

/// Descriptor for `CancelGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelGameRequestDescriptor = $convert.base64Decode(
    'ChFDYW5jZWxHYW1lUmVxdWVzdBIWCgZnYW1lSWQYASABKAVSBmdhbWVJZA==');

@$core.Deprecated('Use leaveGameRequestDescriptor instead')
const LeaveGameRequest$json = {
  '1': 'LeaveGameRequest',
  '2': [
    {'1': 'gameId', '3': 1, '4': 1, '5': 5, '10': 'gameId'},
  ],
};

/// Descriptor for `LeaveGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaveGameRequestDescriptor = $convert.base64Decode(
    'ChBMZWF2ZUdhbWVSZXF1ZXN0EhYKBmdhbWVJZBgBIAEoBVIGZ2FtZUlk');

@$core.Deprecated('Use gameDescriptor instead')
const Game$json = {
  '1': 'Game',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'court', '3': 2, '4': 1, '5': 11, '6': '.court.Court', '10': 'court'},
    {'1': 'inProgress', '3': 4, '4': 1, '5': 11, '6': '.game.GameInProgress', '9': 0, '10': 'inProgress'},
    {'1': 'started', '3': 5, '4': 1, '5': 11, '6': '.game.GameStarted', '9': 0, '10': 'started'},
    {'1': 'ended', '3': 6, '4': 1, '5': 11, '6': '.game.GameEnded', '9': 0, '10': 'ended'},
    {'1': 'teams', '3': 7, '4': 1, '5': 11, '6': '.game.Teams', '9': 1, '10': 'teams', '17': true},
    {'1': 'homePlayers', '3': 8, '4': 3, '5': 11, '6': '.user.User', '10': 'homePlayers'},
    {'1': 'awayPlayers', '3': 9, '4': 3, '5': 11, '6': '.user.User', '10': 'awayPlayers'},
    {'1': 'canceledBy', '3': 10, '4': 3, '5': 11, '6': '.user.User', '10': 'canceledBy'},
  ],
  '8': [
    {'1': 'status'},
    {'1': '_teams'},
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode(
    'CgRHYW1lEg4KAmlkGAEgASgFUgJpZBIiCgVjb3VydBgCIAEoCzIMLmNvdXJ0LkNvdXJ0UgVjb3'
    'VydBI2CgppblByb2dyZXNzGAQgASgLMhQuZ2FtZS5HYW1lSW5Qcm9ncmVzc0gAUgppblByb2dy'
    'ZXNzEi0KB3N0YXJ0ZWQYBSABKAsyES5nYW1lLkdhbWVTdGFydGVkSABSB3N0YXJ0ZWQSJwoFZW'
    '5kZWQYBiABKAsyDy5nYW1lLkdhbWVFbmRlZEgAUgVlbmRlZBImCgV0ZWFtcxgHIAEoCzILLmdh'
    'bWUuVGVhbXNIAVIFdGVhbXOIAQESLAoLaG9tZVBsYXllcnMYCCADKAsyCi51c2VyLlVzZXJSC2'
    'hvbWVQbGF5ZXJzEiwKC2F3YXlQbGF5ZXJzGAkgAygLMgoudXNlci5Vc2VyUgthd2F5UGxheWVy'
    'cxIqCgpjYW5jZWxlZEJ5GAogAygLMgoudXNlci5Vc2VyUgpjYW5jZWxlZEJ5QggKBnN0YXR1c0'
    'IICgZfdGVhbXNKBAgDEAQ=');

@$core.Deprecated('Use gameInProgressDescriptor instead')
const GameInProgress$json = {
  '1': 'GameInProgress',
};

/// Descriptor for `GameInProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameInProgressDescriptor = $convert.base64Decode(
    'Cg5HYW1lSW5Qcm9ncmVzcw==');

@$core.Deprecated('Use gameStartedDescriptor instead')
const GameStarted$json = {
  '1': 'GameStarted',
  '2': [
    {'1': 'startedAt', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedAt'},
  ],
};

/// Descriptor for `GameStarted`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameStartedDescriptor = $convert.base64Decode(
    'CgtHYW1lU3RhcnRlZBI4CglzdGFydGVkQXQYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wUglzdGFydGVkQXQ=');

@$core.Deprecated('Use gameEndedDescriptor instead')
const GameEnded$json = {
  '1': 'GameEnded',
  '2': [
    {'1': 'startedAt', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedAt'},
    {'1': 'endedAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endedAt'},
    {'1': 'homeScore', '3': 3, '4': 1, '5': 5, '10': 'homeScore'},
    {'1': 'awayScore', '3': 4, '4': 1, '5': 5, '10': 'awayScore'},
  ],
};

/// Descriptor for `GameEnded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameEndedDescriptor = $convert.base64Decode(
    'CglHYW1lRW5kZWQSOAoJc3RhcnRlZEF0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFIJc3RhcnRlZEF0EjQKB2VuZGVkQXQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0'
    'YW1wUgdlbmRlZEF0EhwKCWhvbWVTY29yZRgDIAEoBVIJaG9tZVNjb3JlEhwKCWF3YXlTY29yZR'
    'gEIAEoBVIJYXdheVNjb3Jl');

@$core.Deprecated('Use teamsDescriptor instead')
const Teams$json = {
  '1': 'Teams',
  '2': [
    {'1': 'homeTeam', '3': 1, '4': 1, '5': 11, '6': '.team.Team', '10': 'homeTeam'},
    {'1': 'awayTeam', '3': 2, '4': 1, '5': 11, '6': '.team.Team', '10': 'awayTeam'},
  ],
};

/// Descriptor for `Teams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamsDescriptor = $convert.base64Decode(
    'CgVUZWFtcxImCghob21lVGVhbRgBIAEoCzIKLnRlYW0uVGVhbVIIaG9tZVRlYW0SJgoIYXdheV'
    'RlYW0YAiABKAsyCi50ZWFtLlRlYW1SCGF3YXlUZWFt');

