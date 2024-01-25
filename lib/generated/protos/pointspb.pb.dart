//
//  Generated code. Do not modify.
//  source: pointspb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class QueryByDistrict extends $pb.GeneratedMessage {
  factory QueryByDistrict({
    $core.int? districtID,
  }) {
    final $result = create();
    if (districtID != null) {
      $result.districtID = districtID;
    }
    return $result;
  }
  QueryByDistrict._() : super();
  factory QueryByDistrict.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryByDistrict.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryByDistrict', package: const $pb.PackageName(_omitMessageNames ? '' : 'points'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'districtID', $pb.PbFieldType.O3, protoName: 'districtID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryByDistrict clone() => QueryByDistrict()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryByDistrict copyWith(void Function(QueryByDistrict) updates) => super.copyWith((message) => updates(message as QueryByDistrict)) as QueryByDistrict;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryByDistrict create() => QueryByDistrict._();
  QueryByDistrict createEmptyInstance() => create();
  static $pb.PbList<QueryByDistrict> createRepeated() => $pb.PbList<QueryByDistrict>();
  @$core.pragma('dart2js:noInline')
  static QueryByDistrict getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryByDistrict>(create);
  static QueryByDistrict? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get districtID => $_getIZ(0);
  @$pb.TagNumber(1)
  set districtID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDistrictID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDistrictID() => clearField(1);
}

class QueryByUser extends $pb.GeneratedMessage {
  factory QueryByUser({
    $core.int? playerID,
  }) {
    final $result = create();
    if (playerID != null) {
      $result.playerID = playerID;
    }
    return $result;
  }
  QueryByUser._() : super();
  factory QueryByUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryByUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryByUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'points'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'playerID', $pb.PbFieldType.O3, protoName: 'playerID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryByUser clone() => QueryByUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryByUser copyWith(void Function(QueryByUser) updates) => super.copyWith((message) => updates(message as QueryByUser)) as QueryByUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryByUser create() => QueryByUser._();
  QueryByUser createEmptyInstance() => create();
  static $pb.PbList<QueryByUser> createRepeated() => $pb.PbList<QueryByUser>();
  @$core.pragma('dart2js:noInline')
  static QueryByUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryByUser>(create);
  static QueryByUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get playerID => $_getIZ(0);
  @$pb.TagNumber(1)
  set playerID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerID() => clearField(1);
}

class PointsByDistrict extends $pb.GeneratedMessage {
  factory PointsByDistrict({
    $core.Iterable<UserPoints>? userPoints,
  }) {
    final $result = create();
    if (userPoints != null) {
      $result.userPoints.addAll(userPoints);
    }
    return $result;
  }
  PointsByDistrict._() : super();
  factory PointsByDistrict.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PointsByDistrict.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PointsByDistrict', package: const $pb.PackageName(_omitMessageNames ? '' : 'points'), createEmptyInstance: create)
    ..pc<UserPoints>(2, _omitFieldNames ? '' : 'userPoints', $pb.PbFieldType.PM, subBuilder: UserPoints.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PointsByDistrict clone() => PointsByDistrict()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PointsByDistrict copyWith(void Function(PointsByDistrict) updates) => super.copyWith((message) => updates(message as PointsByDistrict)) as PointsByDistrict;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointsByDistrict create() => PointsByDistrict._();
  PointsByDistrict createEmptyInstance() => create();
  static $pb.PbList<PointsByDistrict> createRepeated() => $pb.PbList<PointsByDistrict>();
  @$core.pragma('dart2js:noInline')
  static PointsByDistrict getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PointsByDistrict>(create);
  static PointsByDistrict? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<UserPoints> get userPoints => $_getList(0);
}

class UserPoints extends $pb.GeneratedMessage {
  factory UserPoints({
    $core.int? playerID,
    $core.String? username,
    $core.int? wins,
    $core.int? losses,
    $core.int? cancelled,
    $core.int? totalPoints,
  }) {
    final $result = create();
    if (playerID != null) {
      $result.playerID = playerID;
    }
    if (username != null) {
      $result.username = username;
    }
    if (wins != null) {
      $result.wins = wins;
    }
    if (losses != null) {
      $result.losses = losses;
    }
    if (cancelled != null) {
      $result.cancelled = cancelled;
    }
    if (totalPoints != null) {
      $result.totalPoints = totalPoints;
    }
    return $result;
  }
  UserPoints._() : super();
  factory UserPoints.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserPoints.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserPoints', package: const $pb.PackageName(_omitMessageNames ? '' : 'points'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'playerID', $pb.PbFieldType.O3, protoName: 'playerID')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'wins', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'losses', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'cancelled', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'totalPoints', $pb.PbFieldType.O3, protoName: 'totalPoints')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserPoints clone() => UserPoints()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserPoints copyWith(void Function(UserPoints) updates) => super.copyWith((message) => updates(message as UserPoints)) as UserPoints;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPoints create() => UserPoints._();
  UserPoints createEmptyInstance() => create();
  static $pb.PbList<UserPoints> createRepeated() => $pb.PbList<UserPoints>();
  @$core.pragma('dart2js:noInline')
  static UserPoints getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPoints>(create);
  static UserPoints? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get playerID => $_getIZ(0);
  @$pb.TagNumber(1)
  set playerID($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get wins => $_getIZ(2);
  @$pb.TagNumber(3)
  set wins($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWins() => $_has(2);
  @$pb.TagNumber(3)
  void clearWins() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get losses => $_getIZ(3);
  @$pb.TagNumber(4)
  set losses($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLosses() => $_has(3);
  @$pb.TagNumber(4)
  void clearLosses() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cancelled => $_getIZ(4);
  @$pb.TagNumber(5)
  set cancelled($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCancelled() => $_has(4);
  @$pb.TagNumber(5)
  void clearCancelled() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalPoints => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalPoints($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalPoints() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalPoints() => clearField(6);
}

class UserStats extends $pb.GeneratedMessage {
  factory UserStats({
    $core.int? totalGames,
    $core.int? wins,
    $core.int? losses,
    $core.int? cancelled,
    $core.int? totalPoints,
    $core.int? rank,
  }) {
    final $result = create();
    if (totalGames != null) {
      $result.totalGames = totalGames;
    }
    if (wins != null) {
      $result.wins = wins;
    }
    if (losses != null) {
      $result.losses = losses;
    }
    if (cancelled != null) {
      $result.cancelled = cancelled;
    }
    if (totalPoints != null) {
      $result.totalPoints = totalPoints;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    return $result;
  }
  UserStats._() : super();
  factory UserStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'points'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalGames', $pb.PbFieldType.O3, protoName: 'totalGames')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'wins', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'losses', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'cancelled', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'totalPoints', $pb.PbFieldType.O3, protoName: 'totalPoints')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'rank', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserStats clone() => UserStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserStats copyWith(void Function(UserStats) updates) => super.copyWith((message) => updates(message as UserStats)) as UserStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStats create() => UserStats._();
  UserStats createEmptyInstance() => create();
  static $pb.PbList<UserStats> createRepeated() => $pb.PbList<UserStats>();
  @$core.pragma('dart2js:noInline')
  static UserStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStats>(create);
  static UserStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalGames => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalGames($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalGames() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalGames() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get wins => $_getIZ(1);
  @$pb.TagNumber(2)
  set wins($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWins() => $_has(1);
  @$pb.TagNumber(2)
  void clearWins() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get losses => $_getIZ(2);
  @$pb.TagNumber(3)
  set losses($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLosses() => $_has(2);
  @$pb.TagNumber(3)
  void clearLosses() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get cancelled => $_getIZ(3);
  @$pb.TagNumber(4)
  set cancelled($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCancelled() => $_has(3);
  @$pb.TagNumber(4)
  void clearCancelled() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalPoints => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalPoints($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalPoints() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalPoints() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get rank => $_getIZ(5);
  @$pb.TagNumber(6)
  set rank($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRank() => $_has(5);
  @$pb.TagNumber(6)
  void clearRank() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
