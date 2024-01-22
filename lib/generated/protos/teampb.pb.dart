//
//  Generated code. Do not modify.
//  source: teampb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'commonpb.pb.dart' as $1;
import 'userpb.pb.dart' as $5;

class TeamResponse extends $pb.GeneratedMessage {
  factory TeamResponse({
    Team? team,
  }) {
    final $result = create();
    if (team != null) {
      $result.team = team;
    }
    return $result;
  }
  TeamResponse._() : super();
  factory TeamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TeamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TeamResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..aOM<Team>(1, _omitFieldNames ? '' : 'team', subBuilder: Team.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TeamResponse clone() => TeamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TeamResponse copyWith(void Function(TeamResponse) updates) => super.copyWith((message) => updates(message as TeamResponse)) as TeamResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TeamResponse create() => TeamResponse._();
  TeamResponse createEmptyInstance() => create();
  static $pb.PbList<TeamResponse> createRepeated() => $pb.PbList<TeamResponse>();
  @$core.pragma('dart2js:noInline')
  static TeamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TeamResponse>(create);
  static TeamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Team get team => $_getN(0);
  @$pb.TagNumber(1)
  set team(Team v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeam() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeam() => clearField(1);
  @$pb.TagNumber(1)
  Team ensureTeam() => $_ensure(0);
}

class ListTeamRequest extends $pb.GeneratedMessage {
  factory ListTeamRequest({
    $1.Query? query,
    $1.PaginationRequest? pagination,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListTeamRequest._() : super();
  factory ListTeamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTeamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListTeamRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..aOM<$1.Query>(1, _omitFieldNames ? '' : 'query', subBuilder: $1.Query.create)
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTeamRequest clone() => ListTeamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTeamRequest copyWith(void Function(ListTeamRequest) updates) => super.copyWith((message) => updates(message as ListTeamRequest)) as ListTeamRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListTeamRequest create() => ListTeamRequest._();
  ListTeamRequest createEmptyInstance() => create();
  static $pb.PbList<ListTeamRequest> createRepeated() => $pb.PbList<ListTeamRequest>();
  @$core.pragma('dart2js:noInline')
  static ListTeamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTeamRequest>(create);
  static ListTeamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Query get query => $_getN(0);
  @$pb.TagNumber(1)
  set query($1.Query v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
  @$pb.TagNumber(1)
  $1.Query ensureQuery() => $_ensure(0);

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

class ListTeamResponse extends $pb.GeneratedMessage {
  factory ListTeamResponse({
    $core.Iterable<Team>? teams,
    $1.PaginationResponse? pagination,
  }) {
    final $result = create();
    if (teams != null) {
      $result.teams.addAll(teams);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListTeamResponse._() : super();
  factory ListTeamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTeamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListTeamResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..pc<Team>(1, _omitFieldNames ? '' : 'teams', $pb.PbFieldType.PM, subBuilder: Team.create)
    ..aOM<$1.PaginationResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTeamResponse clone() => ListTeamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTeamResponse copyWith(void Function(ListTeamResponse) updates) => super.copyWith((message) => updates(message as ListTeamResponse)) as ListTeamResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListTeamResponse create() => ListTeamResponse._();
  ListTeamResponse createEmptyInstance() => create();
  static $pb.PbList<ListTeamResponse> createRepeated() => $pb.PbList<ListTeamResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTeamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTeamResponse>(create);
  static ListTeamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Team> get teams => $_getList(0);

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

class CreateTeamRequest extends $pb.GeneratedMessage {
  factory CreateTeamRequest({
    $core.String? name,
    $core.String? description,
    $core.int? districtId,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (districtId != null) {
      $result.districtId = districtId;
    }
    return $result;
  }
  CreateTeamRequest._() : super();
  factory CreateTeamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTeamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTeamRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'districtId', $pb.PbFieldType.O3, protoName: 'districtId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTeamRequest clone() => CreateTeamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTeamRequest copyWith(void Function(CreateTeamRequest) updates) => super.copyWith((message) => updates(message as CreateTeamRequest)) as CreateTeamRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTeamRequest create() => CreateTeamRequest._();
  CreateTeamRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTeamRequest> createRepeated() => $pb.PbList<CreateTeamRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTeamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTeamRequest>(create);
  static CreateTeamRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get districtId => $_getIZ(2);
  @$pb.TagNumber(4)
  set districtId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasDistrictId() => $_has(2);
  @$pb.TagNumber(4)
  void clearDistrictId() => clearField(4);
}

/// Need pending status here
class InvitePlayerRequest extends $pb.GeneratedMessage {
  factory InvitePlayerRequest({
    $core.int? playerId,
  }) {
    final $result = create();
    if (playerId != null) {
      $result.playerId = playerId;
    }
    return $result;
  }
  InvitePlayerRequest._() : super();
  factory InvitePlayerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitePlayerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvitePlayerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'playerId', $pb.PbFieldType.O3, protoName: 'playerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitePlayerRequest clone() => InvitePlayerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitePlayerRequest copyWith(void Function(InvitePlayerRequest) updates) => super.copyWith((message) => updates(message as InvitePlayerRequest)) as InvitePlayerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvitePlayerRequest create() => InvitePlayerRequest._();
  InvitePlayerRequest createEmptyInstance() => create();
  static $pb.PbList<InvitePlayerRequest> createRepeated() => $pb.PbList<InvitePlayerRequest>();
  @$core.pragma('dart2js:noInline')
  static InvitePlayerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitePlayerRequest>(create);
  static InvitePlayerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get playerId => $_getIZ(0);
  @$pb.TagNumber(1)
  set playerId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);
}

class AcceptInviteRequest extends $pb.GeneratedMessage {
  factory AcceptInviteRequest({
    $core.int? inviteId,
  }) {
    final $result = create();
    if (inviteId != null) {
      $result.inviteId = inviteId;
    }
    return $result;
  }
  AcceptInviteRequest._() : super();
  factory AcceptInviteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptInviteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptInviteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'inviteId', $pb.PbFieldType.O3, protoName: 'inviteId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptInviteRequest clone() => AcceptInviteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptInviteRequest copyWith(void Function(AcceptInviteRequest) updates) => super.copyWith((message) => updates(message as AcceptInviteRequest)) as AcceptInviteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptInviteRequest create() => AcceptInviteRequest._();
  AcceptInviteRequest createEmptyInstance() => create();
  static $pb.PbList<AcceptInviteRequest> createRepeated() => $pb.PbList<AcceptInviteRequest>();
  @$core.pragma('dart2js:noInline')
  static AcceptInviteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptInviteRequest>(create);
  static AcceptInviteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get inviteId => $_getIZ(0);
  @$pb.TagNumber(1)
  set inviteId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteId() => clearField(1);
}

class Team extends $pb.GeneratedMessage {
  factory Team({
    $core.int? id,
    $core.String? name,
    $core.String? description,
    $core.int? districtId,
    $core.String? avatarPath,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (districtId != null) {
      $result.districtId = districtId;
    }
    if (avatarPath != null) {
      $result.avatarPath = avatarPath;
    }
    return $result;
  }
  Team._() : super();
  factory Team.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Team.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Team', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'districtId', $pb.PbFieldType.O3, protoName: 'districtId')
    ..aOS(5, _omitFieldNames ? '' : 'avatarPath', protoName: 'avatarPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Team clone() => Team()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Team copyWith(void Function(Team) updates) => super.copyWith((message) => updates(message as Team)) as Team;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Team create() => Team._();
  Team createEmptyInstance() => create();
  static $pb.PbList<Team> createRepeated() => $pb.PbList<Team>();
  @$core.pragma('dart2js:noInline')
  static Team getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Team>(create);
  static Team? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get districtId => $_getIZ(3);
  @$pb.TagNumber(4)
  set districtId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDistrictId() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistrictId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarPath => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatarPath($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatarPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatarPath() => clearField(5);
}

class TeamList extends $pb.GeneratedMessage {
  factory TeamList({
    $core.Iterable<Team>? teams,
  }) {
    final $result = create();
    if (teams != null) {
      $result.teams.addAll(teams);
    }
    return $result;
  }
  TeamList._() : super();
  factory TeamList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TeamList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TeamList', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..pc<Team>(1, _omitFieldNames ? '' : 'teams', $pb.PbFieldType.PM, subBuilder: Team.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TeamList clone() => TeamList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TeamList copyWith(void Function(TeamList) updates) => super.copyWith((message) => updates(message as TeamList)) as TeamList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TeamList create() => TeamList._();
  TeamList createEmptyInstance() => create();
  static $pb.PbList<TeamList> createRepeated() => $pb.PbList<TeamList>();
  @$core.pragma('dart2js:noInline')
  static TeamList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TeamList>(create);
  static TeamList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Team> get teams => $_getList(0);
}

class TeamWithPlayers extends $pb.GeneratedMessage {
  factory TeamWithPlayers({
    Team? team,
    $core.Iterable<$5.User>? players,
  }) {
    final $result = create();
    if (team != null) {
      $result.team = team;
    }
    if (players != null) {
      $result.players.addAll(players);
    }
    return $result;
  }
  TeamWithPlayers._() : super();
  factory TeamWithPlayers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TeamWithPlayers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TeamWithPlayers', package: const $pb.PackageName(_omitMessageNames ? '' : 'team'), createEmptyInstance: create)
    ..aOM<Team>(1, _omitFieldNames ? '' : 'team', subBuilder: Team.create)
    ..pc<$5.User>(2, _omitFieldNames ? '' : 'players', $pb.PbFieldType.PM, subBuilder: $5.User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TeamWithPlayers clone() => TeamWithPlayers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TeamWithPlayers copyWith(void Function(TeamWithPlayers) updates) => super.copyWith((message) => updates(message as TeamWithPlayers)) as TeamWithPlayers;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TeamWithPlayers create() => TeamWithPlayers._();
  TeamWithPlayers createEmptyInstance() => create();
  static $pb.PbList<TeamWithPlayers> createRepeated() => $pb.PbList<TeamWithPlayers>();
  @$core.pragma('dart2js:noInline')
  static TeamWithPlayers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TeamWithPlayers>(create);
  static TeamWithPlayers? _defaultInstance;

  @$pb.TagNumber(1)
  Team get team => $_getN(0);
  @$pb.TagNumber(1)
  set team(Team v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeam() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeam() => clearField(1);
  @$pb.TagNumber(1)
  Team ensureTeam() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$5.User> get players => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
