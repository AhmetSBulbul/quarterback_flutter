//
//  Generated code. Do not modify.
//  source: gamepb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'commonpb.pb.dart' as $1;
import 'courtpb.pb.dart' as $2;
import 'google/protobuf/timestamp.pb.dart' as $7;
import 'teampb.pb.dart' as $4;
import 'userpb.pb.dart' as $3;

/// Get Game
class GetGameRequest extends $pb.GeneratedMessage {
  factory GetGameRequest({
    $core.int? gameId,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    return $result;
  }
  GetGameRequest._() : super();
  factory GetGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'gameId', $pb.PbFieldType.O3, protoName: 'gameId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGameRequest clone() => GetGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGameRequest copyWith(void Function(GetGameRequest) updates) => super.copyWith((message) => updates(message as GetGameRequest)) as GetGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetGameRequest create() => GetGameRequest._();
  GetGameRequest createEmptyInstance() => create();
  static $pb.PbList<GetGameRequest> createRepeated() => $pb.PbList<GetGameRequest>();
  @$core.pragma('dart2js:noInline')
  static GetGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGameRequest>(create);
  static GetGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gameId => $_getIZ(0);
  @$pb.TagNumber(1)
  set gameId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

/// List Games by Location
class ListGamesByLocationRequest extends $pb.GeneratedMessage {
  factory ListGamesByLocationRequest({
    $1.Location? location,
    $1.PaginationRequest? pagination,
  }) {
    final $result = create();
    if (location != null) {
      $result.location = location;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListGamesByLocationRequest._() : super();
  factory ListGamesByLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGamesByLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGamesByLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..aOM<$1.Location>(1, _omitFieldNames ? '' : 'location', subBuilder: $1.Location.create)
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGamesByLocationRequest clone() => ListGamesByLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGamesByLocationRequest copyWith(void Function(ListGamesByLocationRequest) updates) => super.copyWith((message) => updates(message as ListGamesByLocationRequest)) as ListGamesByLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGamesByLocationRequest create() => ListGamesByLocationRequest._();
  ListGamesByLocationRequest createEmptyInstance() => create();
  static $pb.PbList<ListGamesByLocationRequest> createRepeated() => $pb.PbList<ListGamesByLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGamesByLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGamesByLocationRequest>(create);
  static ListGamesByLocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location($1.Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  $1.Location ensureLocation() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.PaginationRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationRequest ensurePagination() => $_ensure(1);
}

/// List Games by User
class ListGamesByUserRequest extends $pb.GeneratedMessage {
  factory ListGamesByUserRequest({
    $core.int? userId,
    $1.PaginationRequest? pagination,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListGamesByUserRequest._() : super();
  factory ListGamesByUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGamesByUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGamesByUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGamesByUserRequest clone() => ListGamesByUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGamesByUserRequest copyWith(void Function(ListGamesByUserRequest) updates) => super.copyWith((message) => updates(message as ListGamesByUserRequest)) as ListGamesByUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGamesByUserRequest create() => ListGamesByUserRequest._();
  ListGamesByUserRequest createEmptyInstance() => create();
  static $pb.PbList<ListGamesByUserRequest> createRepeated() => $pb.PbList<ListGamesByUserRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGamesByUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGamesByUserRequest>(create);
  static ListGamesByUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $1.PaginationRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationRequest ensurePagination() => $_ensure(1);
}

/// List Games by Court
class ListGamesByCourtRequest extends $pb.GeneratedMessage {
  factory ListGamesByCourtRequest({
    $core.int? courtId,
    $1.PaginationRequest? pagination,
  }) {
    final $result = create();
    if (courtId != null) {
      $result.courtId = courtId;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListGamesByCourtRequest._() : super();
  factory ListGamesByCourtRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGamesByCourtRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGamesByCourtRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'courtId', $pb.PbFieldType.O3, protoName: 'courtId')
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGamesByCourtRequest clone() => ListGamesByCourtRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGamesByCourtRequest copyWith(void Function(ListGamesByCourtRequest) updates) => super.copyWith((message) => updates(message as ListGamesByCourtRequest)) as ListGamesByCourtRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGamesByCourtRequest create() => ListGamesByCourtRequest._();
  ListGamesByCourtRequest createEmptyInstance() => create();
  static $pb.PbList<ListGamesByCourtRequest> createRepeated() => $pb.PbList<ListGamesByCourtRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGamesByCourtRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGamesByCourtRequest>(create);
  static ListGamesByCourtRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get courtId => $_getIZ(0);
  @$pb.TagNumber(1)
  set courtId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourtId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourtId() => clearField(1);

  @$pb.TagNumber(2)
  $1.PaginationRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationRequest ensurePagination() => $_ensure(1);
}

/// List Games by Team
class ListGamesByTeamRequest extends $pb.GeneratedMessage {
  factory ListGamesByTeamRequest({
    $core.int? teamId,
    $1.PaginationRequest? pagination,
  }) {
    final $result = create();
    if (teamId != null) {
      $result.teamId = teamId;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListGamesByTeamRequest._() : super();
  factory ListGamesByTeamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGamesByTeamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGamesByTeamRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'teamId', $pb.PbFieldType.O3, protoName: 'teamId')
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGamesByTeamRequest clone() => ListGamesByTeamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGamesByTeamRequest copyWith(void Function(ListGamesByTeamRequest) updates) => super.copyWith((message) => updates(message as ListGamesByTeamRequest)) as ListGamesByTeamRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGamesByTeamRequest create() => ListGamesByTeamRequest._();
  ListGamesByTeamRequest createEmptyInstance() => create();
  static $pb.PbList<ListGamesByTeamRequest> createRepeated() => $pb.PbList<ListGamesByTeamRequest>();
  @$core.pragma('dart2js:noInline')
  static ListGamesByTeamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGamesByTeamRequest>(create);
  static ListGamesByTeamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get teamId => $_getIZ(0);
  @$pb.TagNumber(1)
  set teamId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeamId() => clearField(1);

  @$pb.TagNumber(2)
  $1.PaginationRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationRequest ensurePagination() => $_ensure(1);
}

class ListGamesResponse extends $pb.GeneratedMessage {
  factory ListGamesResponse({
    $core.Iterable<Game>? games,
    $1.PaginationResponse? pagination,
  }) {
    final $result = create();
    if (games != null) {
      $result.games.addAll(games);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListGamesResponse._() : super();
  factory ListGamesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGamesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListGamesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..pc<Game>(1, _omitFieldNames ? '' : 'games', $pb.PbFieldType.PM, subBuilder: Game.create)
    ..aOM<$1.PaginationResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGamesResponse clone() => ListGamesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGamesResponse copyWith(void Function(ListGamesResponse) updates) => super.copyWith((message) => updates(message as ListGamesResponse)) as ListGamesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGamesResponse create() => ListGamesResponse._();
  ListGamesResponse createEmptyInstance() => create();
  static $pb.PbList<ListGamesResponse> createRepeated() => $pb.PbList<ListGamesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListGamesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGamesResponse>(create);
  static ListGamesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Game> get games => $_getList(0);

  @$pb.TagNumber(2)
  $1.PaginationResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationResponse ensurePagination() => $_ensure(1);
}

/// Create game
class CreateGameRequest extends $pb.GeneratedMessage {
  factory CreateGameRequest({
    $core.int? courtId,
  }) {
    final $result = create();
    if (courtId != null) {
      $result.courtId = courtId;
    }
    return $result;
  }
  CreateGameRequest._() : super();
  factory CreateGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'courtId', $pb.PbFieldType.O3, protoName: 'courtId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGameRequest clone() => CreateGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGameRequest copyWith(void Function(CreateGameRequest) updates) => super.copyWith((message) => updates(message as CreateGameRequest)) as CreateGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGameRequest create() => CreateGameRequest._();
  CreateGameRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGameRequest> createRepeated() => $pb.PbList<CreateGameRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGameRequest>(create);
  static CreateGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get courtId => $_getIZ(0);
  @$pb.TagNumber(1)
  set courtId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourtId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourtId() => clearField(1);
}

class CreateGameWithTeamRequest extends $pb.GeneratedMessage {
  factory CreateGameWithTeamRequest({
    $core.int? courtId,
    $core.int? awayTeamId,
  }) {
    final $result = create();
    if (courtId != null) {
      $result.courtId = courtId;
    }
    if (awayTeamId != null) {
      $result.awayTeamId = awayTeamId;
    }
    return $result;
  }
  CreateGameWithTeamRequest._() : super();
  factory CreateGameWithTeamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGameWithTeamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGameWithTeamRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'courtId', $pb.PbFieldType.O3, protoName: 'courtId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'awayTeamId', $pb.PbFieldType.O3, protoName: 'awayTeamId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGameWithTeamRequest clone() => CreateGameWithTeamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGameWithTeamRequest copyWith(void Function(CreateGameWithTeamRequest) updates) => super.copyWith((message) => updates(message as CreateGameWithTeamRequest)) as CreateGameWithTeamRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGameWithTeamRequest create() => CreateGameWithTeamRequest._();
  CreateGameWithTeamRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGameWithTeamRequest> createRepeated() => $pb.PbList<CreateGameWithTeamRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGameWithTeamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGameWithTeamRequest>(create);
  static CreateGameWithTeamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get courtId => $_getIZ(0);
  @$pb.TagNumber(1)
  set courtId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourtId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourtId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get awayTeamId => $_getIZ(1);
  @$pb.TagNumber(2)
  set awayTeamId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAwayTeamId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAwayTeamId() => clearField(2);
}

class GameResponse extends $pb.GeneratedMessage {
  factory GameResponse({
    Game? game,
  }) {
    final $result = create();
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  GameResponse._() : super();
  factory GameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..aOM<Game>(1, _omitFieldNames ? '' : 'game', subBuilder: Game.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameResponse clone() => GameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameResponse copyWith(void Function(GameResponse) updates) => super.copyWith((message) => updates(message as GameResponse)) as GameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameResponse create() => GameResponse._();
  GameResponse createEmptyInstance() => create();
  static $pb.PbList<GameResponse> createRepeated() => $pb.PbList<GameResponse>();
  @$core.pragma('dart2js:noInline')
  static GameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameResponse>(create);
  static GameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Game get game => $_getN(0);
  @$pb.TagNumber(1)
  set game(Game v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  Game ensureGame() => $_ensure(0);
}

/// Join Game
class JoinGameRequest extends $pb.GeneratedMessage {
  factory JoinGameRequest({
    $core.int? gameId,
    $core.bool? isHomeSide,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (isHomeSide != null) {
      $result.isHomeSide = isHomeSide;
    }
    return $result;
  }
  JoinGameRequest._() : super();
  factory JoinGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JoinGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'gameId', $pb.PbFieldType.O3, protoName: 'gameId')
    ..aOB(2, _omitFieldNames ? '' : 'isHomeSide', protoName: 'isHomeSide')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinGameRequest clone() => JoinGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinGameRequest copyWith(void Function(JoinGameRequest) updates) => super.copyWith((message) => updates(message as JoinGameRequest)) as JoinGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinGameRequest create() => JoinGameRequest._();
  JoinGameRequest createEmptyInstance() => create();
  static $pb.PbList<JoinGameRequest> createRepeated() => $pb.PbList<JoinGameRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinGameRequest>(create);
  static JoinGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gameId => $_getIZ(0);
  @$pb.TagNumber(1)
  set gameId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isHomeSide => $_getBF(1);
  @$pb.TagNumber(2)
  set isHomeSide($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsHomeSide() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsHomeSide() => clearField(2);
}

/// Start Game
class StartGameRequest extends $pb.GeneratedMessage {
  factory StartGameRequest({
    $core.int? gameId,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    return $result;
  }
  StartGameRequest._() : super();
  factory StartGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'gameId', $pb.PbFieldType.O3, protoName: 'gameId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartGameRequest clone() => StartGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartGameRequest copyWith(void Function(StartGameRequest) updates) => super.copyWith((message) => updates(message as StartGameRequest)) as StartGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartGameRequest create() => StartGameRequest._();
  StartGameRequest createEmptyInstance() => create();
  static $pb.PbList<StartGameRequest> createRepeated() => $pb.PbList<StartGameRequest>();
  @$core.pragma('dart2js:noInline')
  static StartGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartGameRequest>(create);
  static StartGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gameId => $_getIZ(0);
  @$pb.TagNumber(1)
  set gameId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

/// End Game
class EndGameRequest extends $pb.GeneratedMessage {
  factory EndGameRequest({
    $core.int? gameId,
    $core.int? homeScore,
    $core.int? awayScore,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (homeScore != null) {
      $result.homeScore = homeScore;
    }
    if (awayScore != null) {
      $result.awayScore = awayScore;
    }
    return $result;
  }
  EndGameRequest._() : super();
  factory EndGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EndGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'gameId', $pb.PbFieldType.O3, protoName: 'gameId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'homeScore', $pb.PbFieldType.O3, protoName: 'homeScore')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'awayScore', $pb.PbFieldType.O3, protoName: 'awayScore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndGameRequest clone() => EndGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndGameRequest copyWith(void Function(EndGameRequest) updates) => super.copyWith((message) => updates(message as EndGameRequest)) as EndGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndGameRequest create() => EndGameRequest._();
  EndGameRequest createEmptyInstance() => create();
  static $pb.PbList<EndGameRequest> createRepeated() => $pb.PbList<EndGameRequest>();
  @$core.pragma('dart2js:noInline')
  static EndGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndGameRequest>(create);
  static EndGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gameId => $_getIZ(0);
  @$pb.TagNumber(1)
  set gameId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get homeScore => $_getIZ(1);
  @$pb.TagNumber(2)
  set homeScore($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHomeScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHomeScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get awayScore => $_getIZ(2);
  @$pb.TagNumber(3)
  set awayScore($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAwayScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearAwayScore() => clearField(3);
}

/// Cancel Game
class CancelGameRequest extends $pb.GeneratedMessage {
  factory CancelGameRequest({
    $core.int? gameId,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    return $result;
  }
  CancelGameRequest._() : super();
  factory CancelGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'gameId', $pb.PbFieldType.O3, protoName: 'gameId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelGameRequest clone() => CancelGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelGameRequest copyWith(void Function(CancelGameRequest) updates) => super.copyWith((message) => updates(message as CancelGameRequest)) as CancelGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelGameRequest create() => CancelGameRequest._();
  CancelGameRequest createEmptyInstance() => create();
  static $pb.PbList<CancelGameRequest> createRepeated() => $pb.PbList<CancelGameRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelGameRequest>(create);
  static CancelGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gameId => $_getIZ(0);
  @$pb.TagNumber(1)
  set gameId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

enum Game_Status {
  inProgress, 
  started, 
  ended, 
  notSet
}

class Game extends $pb.GeneratedMessage {
  factory Game({
    $core.int? id,
    $2.Court? court,
    $3.User? createdBy,
    GameInProgress? inProgress,
    GameStarted? started,
    GameEnded? ended,
    Teams? teams,
    $core.Iterable<$3.User>? homePlayers,
    $core.Iterable<$3.User>? awayPlayers,
    $core.Iterable<$core.int>? cancelledBy,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (court != null) {
      $result.court = court;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (inProgress != null) {
      $result.inProgress = inProgress;
    }
    if (started != null) {
      $result.started = started;
    }
    if (ended != null) {
      $result.ended = ended;
    }
    if (teams != null) {
      $result.teams = teams;
    }
    if (homePlayers != null) {
      $result.homePlayers.addAll(homePlayers);
    }
    if (awayPlayers != null) {
      $result.awayPlayers.addAll(awayPlayers);
    }
    if (cancelledBy != null) {
      $result.cancelledBy.addAll(cancelledBy);
    }
    return $result;
  }
  Game._() : super();
  factory Game.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Game.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Game_Status> _Game_StatusByTag = {
    4 : Game_Status.inProgress,
    5 : Game_Status.started,
    6 : Game_Status.ended,
    0 : Game_Status.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Game', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6])
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$2.Court>(2, _omitFieldNames ? '' : 'court', subBuilder: $2.Court.create)
    ..aOM<$3.User>(3, _omitFieldNames ? '' : 'createdBy', protoName: 'createdBy', subBuilder: $3.User.create)
    ..aOM<GameInProgress>(4, _omitFieldNames ? '' : 'inProgress', protoName: 'inProgress', subBuilder: GameInProgress.create)
    ..aOM<GameStarted>(5, _omitFieldNames ? '' : 'started', subBuilder: GameStarted.create)
    ..aOM<GameEnded>(6, _omitFieldNames ? '' : 'ended', subBuilder: GameEnded.create)
    ..aOM<Teams>(7, _omitFieldNames ? '' : 'teams', subBuilder: Teams.create)
    ..pc<$3.User>(8, _omitFieldNames ? '' : 'homePlayers', $pb.PbFieldType.PM, protoName: 'homePlayers', subBuilder: $3.User.create)
    ..pc<$3.User>(9, _omitFieldNames ? '' : 'awayPlayers', $pb.PbFieldType.PM, protoName: 'awayPlayers', subBuilder: $3.User.create)
    ..p<$core.int>(10, _omitFieldNames ? '' : 'cancelledBy', $pb.PbFieldType.K3, protoName: 'cancelledBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Game clone() => Game()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Game copyWith(void Function(Game) updates) => super.copyWith((message) => updates(message as Game)) as Game;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Game create() => Game._();
  Game createEmptyInstance() => create();
  static $pb.PbList<Game> createRepeated() => $pb.PbList<Game>();
  @$core.pragma('dart2js:noInline')
  static Game getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Game>(create);
  static Game? _defaultInstance;

  Game_Status whichStatus() => _Game_StatusByTag[$_whichOneof(0)]!;
  void clearStatus() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $2.Court get court => $_getN(1);
  @$pb.TagNumber(2)
  set court($2.Court v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCourt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCourt() => clearField(2);
  @$pb.TagNumber(2)
  $2.Court ensureCourt() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.User get createdBy => $_getN(2);
  @$pb.TagNumber(3)
  set createdBy($3.User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedBy() => clearField(3);
  @$pb.TagNumber(3)
  $3.User ensureCreatedBy() => $_ensure(2);

  @$pb.TagNumber(4)
  GameInProgress get inProgress => $_getN(3);
  @$pb.TagNumber(4)
  set inProgress(GameInProgress v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInProgress() => $_has(3);
  @$pb.TagNumber(4)
  void clearInProgress() => clearField(4);
  @$pb.TagNumber(4)
  GameInProgress ensureInProgress() => $_ensure(3);

  @$pb.TagNumber(5)
  GameStarted get started => $_getN(4);
  @$pb.TagNumber(5)
  set started(GameStarted v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStarted() => $_has(4);
  @$pb.TagNumber(5)
  void clearStarted() => clearField(5);
  @$pb.TagNumber(5)
  GameStarted ensureStarted() => $_ensure(4);

  @$pb.TagNumber(6)
  GameEnded get ended => $_getN(5);
  @$pb.TagNumber(6)
  set ended(GameEnded v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEnded() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnded() => clearField(6);
  @$pb.TagNumber(6)
  GameEnded ensureEnded() => $_ensure(5);

  /// If [Game] is created by a team, then [teams] should be set
  /// If [Game] has teams, that means it is a team game
  @$pb.TagNumber(7)
  Teams get teams => $_getN(6);
  @$pb.TagNumber(7)
  set teams(Teams v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTeams() => $_has(6);
  @$pb.TagNumber(7)
  void clearTeams() => clearField(7);
  @$pb.TagNumber(7)
  Teams ensureTeams() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$3.User> get homePlayers => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$3.User> get awayPlayers => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get cancelledBy => $_getList(9);
}

/// Game status
class GameInProgress extends $pb.GeneratedMessage {
  factory GameInProgress() => create();
  GameInProgress._() : super();
  factory GameInProgress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameInProgress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameInProgress', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameInProgress clone() => GameInProgress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameInProgress copyWith(void Function(GameInProgress) updates) => super.copyWith((message) => updates(message as GameInProgress)) as GameInProgress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameInProgress create() => GameInProgress._();
  GameInProgress createEmptyInstance() => create();
  static $pb.PbList<GameInProgress> createRepeated() => $pb.PbList<GameInProgress>();
  @$core.pragma('dart2js:noInline')
  static GameInProgress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameInProgress>(create);
  static GameInProgress? _defaultInstance;
}

class GameStarted extends $pb.GeneratedMessage {
  factory GameStarted({
    $7.Timestamp? startedAt,
  }) {
    final $result = create();
    if (startedAt != null) {
      $result.startedAt = startedAt;
    }
    return $result;
  }
  GameStarted._() : super();
  factory GameStarted.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameStarted.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameStarted', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..aOM<$7.Timestamp>(1, _omitFieldNames ? '' : 'startedAt', protoName: 'startedAt', subBuilder: $7.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameStarted clone() => GameStarted()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameStarted copyWith(void Function(GameStarted) updates) => super.copyWith((message) => updates(message as GameStarted)) as GameStarted;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameStarted create() => GameStarted._();
  GameStarted createEmptyInstance() => create();
  static $pb.PbList<GameStarted> createRepeated() => $pb.PbList<GameStarted>();
  @$core.pragma('dart2js:noInline')
  static GameStarted getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameStarted>(create);
  static GameStarted? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Timestamp get startedAt => $_getN(0);
  @$pb.TagNumber(1)
  set startedAt($7.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartedAt() => clearField(1);
  @$pb.TagNumber(1)
  $7.Timestamp ensureStartedAt() => $_ensure(0);
}

class GameEnded extends $pb.GeneratedMessage {
  factory GameEnded({
    $7.Timestamp? startedAt,
    $7.Timestamp? endedAt,
    $core.int? homeScore,
    $core.int? awayScore,
  }) {
    final $result = create();
    if (startedAt != null) {
      $result.startedAt = startedAt;
    }
    if (endedAt != null) {
      $result.endedAt = endedAt;
    }
    if (homeScore != null) {
      $result.homeScore = homeScore;
    }
    if (awayScore != null) {
      $result.awayScore = awayScore;
    }
    return $result;
  }
  GameEnded._() : super();
  factory GameEnded.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameEnded.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameEnded', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..aOM<$7.Timestamp>(1, _omitFieldNames ? '' : 'startedAt', protoName: 'startedAt', subBuilder: $7.Timestamp.create)
    ..aOM<$7.Timestamp>(2, _omitFieldNames ? '' : 'endedAt', protoName: 'endedAt', subBuilder: $7.Timestamp.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'homeScore', $pb.PbFieldType.O3, protoName: 'homeScore')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'awayScore', $pb.PbFieldType.O3, protoName: 'awayScore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameEnded clone() => GameEnded()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameEnded copyWith(void Function(GameEnded) updates) => super.copyWith((message) => updates(message as GameEnded)) as GameEnded;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameEnded create() => GameEnded._();
  GameEnded createEmptyInstance() => create();
  static $pb.PbList<GameEnded> createRepeated() => $pb.PbList<GameEnded>();
  @$core.pragma('dart2js:noInline')
  static GameEnded getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameEnded>(create);
  static GameEnded? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Timestamp get startedAt => $_getN(0);
  @$pb.TagNumber(1)
  set startedAt($7.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartedAt() => clearField(1);
  @$pb.TagNumber(1)
  $7.Timestamp ensureStartedAt() => $_ensure(0);

  @$pb.TagNumber(2)
  $7.Timestamp get endedAt => $_getN(1);
  @$pb.TagNumber(2)
  set endedAt($7.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndedAt() => clearField(2);
  @$pb.TagNumber(2)
  $7.Timestamp ensureEndedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get homeScore => $_getIZ(2);
  @$pb.TagNumber(3)
  set homeScore($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHomeScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearHomeScore() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get awayScore => $_getIZ(3);
  @$pb.TagNumber(4)
  set awayScore($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAwayScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearAwayScore() => clearField(4);
}

class Teams extends $pb.GeneratedMessage {
  factory Teams({
    $4.Team? homeTeam,
    $4.Team? awayTeam,
  }) {
    final $result = create();
    if (homeTeam != null) {
      $result.homeTeam = homeTeam;
    }
    if (awayTeam != null) {
      $result.awayTeam = awayTeam;
    }
    return $result;
  }
  Teams._() : super();
  factory Teams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Teams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Teams', package: const $pb.PackageName(_omitMessageNames ? '' : 'game'), createEmptyInstance: create)
    ..aOM<$4.Team>(1, _omitFieldNames ? '' : 'homeTeam', protoName: 'homeTeam', subBuilder: $4.Team.create)
    ..aOM<$4.Team>(2, _omitFieldNames ? '' : 'awayTeam', protoName: 'awayTeam', subBuilder: $4.Team.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Teams clone() => Teams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Teams copyWith(void Function(Teams) updates) => super.copyWith((message) => updates(message as Teams)) as Teams;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Teams create() => Teams._();
  Teams createEmptyInstance() => create();
  static $pb.PbList<Teams> createRepeated() => $pb.PbList<Teams>();
  @$core.pragma('dart2js:noInline')
  static Teams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Teams>(create);
  static Teams? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Team get homeTeam => $_getN(0);
  @$pb.TagNumber(1)
  set homeTeam($4.Team v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHomeTeam() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeTeam() => clearField(1);
  @$pb.TagNumber(1)
  $4.Team ensureHomeTeam() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.Team get awayTeam => $_getN(1);
  @$pb.TagNumber(2)
  set awayTeam($4.Team v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAwayTeam() => $_has(1);
  @$pb.TagNumber(2)
  void clearAwayTeam() => clearField(2);
  @$pb.TagNumber(2)
  $4.Team ensureAwayTeam() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
