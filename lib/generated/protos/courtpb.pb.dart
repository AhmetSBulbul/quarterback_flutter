//
//  Generated code. Do not modify.
//  source: courtpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'commonpb.pb.dart' as $1;
import 'regionpb.pb.dart' as $4;
import 'userpb.pb.dart' as $3;

class Court extends $pb.GeneratedMessage {
  factory Court({
    $core.int? id,
    $core.String? name,
    $4.District? district,
    $core.String? address,
    $1.Location? location,
    $core.Iterable<$1.Media>? media,
    $core.int? checkInCount,
    $core.int? commentCount,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (district != null) {
      $result.district = district;
    }
    if (address != null) {
      $result.address = address;
    }
    if (location != null) {
      $result.location = location;
    }
    if (media != null) {
      $result.media.addAll(media);
    }
    if (checkInCount != null) {
      $result.checkInCount = checkInCount;
    }
    if (commentCount != null) {
      $result.commentCount = commentCount;
    }
    return $result;
  }
  Court._() : super();
  factory Court.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Court.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Court', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$4.District>(3, _omitFieldNames ? '' : 'district', subBuilder: $4.District.create)
    ..aOS(4, _omitFieldNames ? '' : 'address')
    ..aOM<$1.Location>(5, _omitFieldNames ? '' : 'location', subBuilder: $1.Location.create)
    ..pc<$1.Media>(6, _omitFieldNames ? '' : 'media', $pb.PbFieldType.PM, subBuilder: $1.Media.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'checkInCount', $pb.PbFieldType.O3, protoName: 'checkInCount')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'commentCount', $pb.PbFieldType.O3, protoName: 'commentCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Court clone() => Court()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Court copyWith(void Function(Court) updates) => super.copyWith((message) => updates(message as Court)) as Court;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Court create() => Court._();
  Court createEmptyInstance() => create();
  static $pb.PbList<Court> createRepeated() => $pb.PbList<Court>();
  @$core.pragma('dart2js:noInline')
  static Court getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Court>(create);
  static Court? _defaultInstance;

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
  $4.District get district => $_getN(2);
  @$pb.TagNumber(3)
  set district($4.District v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDistrict() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistrict() => clearField(3);
  @$pb.TagNumber(3)
  $4.District ensureDistrict() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get address => $_getSZ(3);
  @$pb.TagNumber(4)
  set address($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);

  @$pb.TagNumber(5)
  $1.Location get location => $_getN(4);
  @$pb.TagNumber(5)
  set location($1.Location v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);
  @$pb.TagNumber(5)
  $1.Location ensureLocation() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$1.Media> get media => $_getList(5);

  @$pb.TagNumber(7)
  $core.int get checkInCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set checkInCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCheckInCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearCheckInCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get commentCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set commentCount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCommentCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearCommentCount() => clearField(8);
}

class CourtCommentRequest extends $pb.GeneratedMessage {
  factory CourtCommentRequest({
    $core.int? courtId,
    $core.String? content,
  }) {
    final $result = create();
    if (courtId != null) {
      $result.courtId = courtId;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  CourtCommentRequest._() : super();
  factory CourtCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CourtCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CourtCommentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'courtId', $pb.PbFieldType.O3, protoName: 'courtId')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CourtCommentRequest clone() => CourtCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CourtCommentRequest copyWith(void Function(CourtCommentRequest) updates) => super.copyWith((message) => updates(message as CourtCommentRequest)) as CourtCommentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourtCommentRequest create() => CourtCommentRequest._();
  CourtCommentRequest createEmptyInstance() => create();
  static $pb.PbList<CourtCommentRequest> createRepeated() => $pb.PbList<CourtCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static CourtCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CourtCommentRequest>(create);
  static CourtCommentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get courtId => $_getIZ(0);
  @$pb.TagNumber(1)
  set courtId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourtId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourtId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class CourtComment extends $pb.GeneratedMessage {
  factory CourtComment({
    $core.int? id,
    $core.int? courtId,
    $3.User? sender,
    $core.String? content,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (courtId != null) {
      $result.courtId = courtId;
    }
    if (sender != null) {
      $result.sender = sender;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  CourtComment._() : super();
  factory CourtComment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CourtComment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CourtComment', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'courtId', $pb.PbFieldType.O3, protoName: 'courtId')
    ..aOM<$3.User>(3, _omitFieldNames ? '' : 'sender', subBuilder: $3.User.create)
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CourtComment clone() => CourtComment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CourtComment copyWith(void Function(CourtComment) updates) => super.copyWith((message) => updates(message as CourtComment)) as CourtComment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourtComment create() => CourtComment._();
  CourtComment createEmptyInstance() => create();
  static $pb.PbList<CourtComment> createRepeated() => $pb.PbList<CourtComment>();
  @$core.pragma('dart2js:noInline')
  static CourtComment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CourtComment>(create);
  static CourtComment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get courtId => $_getIZ(1);
  @$pb.TagNumber(2)
  set courtId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCourtId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCourtId() => clearField(2);

  @$pb.TagNumber(3)
  $3.User get sender => $_getN(2);
  @$pb.TagNumber(3)
  set sender($3.User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSender() => $_has(2);
  @$pb.TagNumber(3)
  void clearSender() => clearField(3);
  @$pb.TagNumber(3)
  $3.User ensureSender() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);
}

class CourtCommentListRequest extends $pb.GeneratedMessage {
  factory CourtCommentListRequest({
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
  CourtCommentListRequest._() : super();
  factory CourtCommentListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CourtCommentListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CourtCommentListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'courtId', $pb.PbFieldType.O3, protoName: 'courtId')
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CourtCommentListRequest clone() => CourtCommentListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CourtCommentListRequest copyWith(void Function(CourtCommentListRequest) updates) => super.copyWith((message) => updates(message as CourtCommentListRequest)) as CourtCommentListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourtCommentListRequest create() => CourtCommentListRequest._();
  CourtCommentListRequest createEmptyInstance() => create();
  static $pb.PbList<CourtCommentListRequest> createRepeated() => $pb.PbList<CourtCommentListRequest>();
  @$core.pragma('dart2js:noInline')
  static CourtCommentListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CourtCommentListRequest>(create);
  static CourtCommentListRequest? _defaultInstance;

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

class CourtCommentListResponse extends $pb.GeneratedMessage {
  factory CourtCommentListResponse({
    $core.Iterable<CourtComment>? comments,
    $1.PaginationResponse? pagination,
  }) {
    final $result = create();
    if (comments != null) {
      $result.comments.addAll(comments);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  CourtCommentListResponse._() : super();
  factory CourtCommentListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CourtCommentListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CourtCommentListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..pc<CourtComment>(1, _omitFieldNames ? '' : 'comments', $pb.PbFieldType.PM, subBuilder: CourtComment.create)
    ..aOM<$1.PaginationResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CourtCommentListResponse clone() => CourtCommentListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CourtCommentListResponse copyWith(void Function(CourtCommentListResponse) updates) => super.copyWith((message) => updates(message as CourtCommentListResponse)) as CourtCommentListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourtCommentListResponse create() => CourtCommentListResponse._();
  CourtCommentListResponse createEmptyInstance() => create();
  static $pb.PbList<CourtCommentListResponse> createRepeated() => $pb.PbList<CourtCommentListResponse>();
  @$core.pragma('dart2js:noInline')
  static CourtCommentListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CourtCommentListResponse>(create);
  static CourtCommentListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CourtComment> get comments => $_getList(0);

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

/// Get Court
class GetCourtRequest extends $pb.GeneratedMessage {
  factory GetCourtRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetCourtRequest._() : super();
  factory GetCourtRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCourtRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCourtRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCourtRequest clone() => GetCourtRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCourtRequest copyWith(void Function(GetCourtRequest) updates) => super.copyWith((message) => updates(message as GetCourtRequest)) as GetCourtRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCourtRequest create() => GetCourtRequest._();
  GetCourtRequest createEmptyInstance() => create();
  static $pb.PbList<GetCourtRequest> createRepeated() => $pb.PbList<GetCourtRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCourtRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCourtRequest>(create);
  static GetCourtRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CheckInCourtResponse extends $pb.GeneratedMessage {
  factory CheckInCourtResponse({
    $core.int? id,
    $core.bool? checkedIn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (checkedIn != null) {
      $result.checkedIn = checkedIn;
    }
    return $result;
  }
  CheckInCourtResponse._() : super();
  factory CheckInCourtResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckInCourtResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckInCourtResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'checkedIn', protoName: 'checkedIn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckInCourtResponse clone() => CheckInCourtResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckInCourtResponse copyWith(void Function(CheckInCourtResponse) updates) => super.copyWith((message) => updates(message as CheckInCourtResponse)) as CheckInCourtResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckInCourtResponse create() => CheckInCourtResponse._();
  CheckInCourtResponse createEmptyInstance() => create();
  static $pb.PbList<CheckInCourtResponse> createRepeated() => $pb.PbList<CheckInCourtResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckInCourtResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckInCourtResponse>(create);
  static CheckInCourtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get checkedIn => $_getBF(1);
  @$pb.TagNumber(2)
  set checkedIn($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCheckedIn() => $_has(1);
  @$pb.TagNumber(2)
  void clearCheckedIn() => clearField(2);
}

class CourtResponse extends $pb.GeneratedMessage {
  factory CourtResponse({
    Court? court,
  }) {
    final $result = create();
    if (court != null) {
      $result.court = court;
    }
    return $result;
  }
  CourtResponse._() : super();
  factory CourtResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CourtResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CourtResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..aOM<Court>(1, _omitFieldNames ? '' : 'court', subBuilder: Court.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CourtResponse clone() => CourtResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CourtResponse copyWith(void Function(CourtResponse) updates) => super.copyWith((message) => updates(message as CourtResponse)) as CourtResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourtResponse create() => CourtResponse._();
  CourtResponse createEmptyInstance() => create();
  static $pb.PbList<CourtResponse> createRepeated() => $pb.PbList<CourtResponse>();
  @$core.pragma('dart2js:noInline')
  static CourtResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CourtResponse>(create);
  static CourtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Court get court => $_getN(0);
  @$pb.TagNumber(1)
  set court(Court v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCourt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCourt() => clearField(1);
  @$pb.TagNumber(1)
  Court ensureCourt() => $_ensure(0);
}

class ListCourtByLocationRequest extends $pb.GeneratedMessage {
  factory ListCourtByLocationRequest({
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
  ListCourtByLocationRequest._() : super();
  factory ListCourtByLocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListCourtByLocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCourtByLocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..aOM<$1.Location>(1, _omitFieldNames ? '' : 'location', subBuilder: $1.Location.create)
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListCourtByLocationRequest clone() => ListCourtByLocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListCourtByLocationRequest copyWith(void Function(ListCourtByLocationRequest) updates) => super.copyWith((message) => updates(message as ListCourtByLocationRequest)) as ListCourtByLocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCourtByLocationRequest create() => ListCourtByLocationRequest._();
  ListCourtByLocationRequest createEmptyInstance() => create();
  static $pb.PbList<ListCourtByLocationRequest> createRepeated() => $pb.PbList<ListCourtByLocationRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCourtByLocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCourtByLocationRequest>(create);
  static ListCourtByLocationRequest? _defaultInstance;

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

class SearchCourtRequest extends $pb.GeneratedMessage {
  factory SearchCourtRequest({
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
  SearchCourtRequest._() : super();
  factory SearchCourtRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchCourtRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchCourtRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..aOM<$1.Query>(1, _omitFieldNames ? '' : 'query', subBuilder: $1.Query.create)
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchCourtRequest clone() => SearchCourtRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchCourtRequest copyWith(void Function(SearchCourtRequest) updates) => super.copyWith((message) => updates(message as SearchCourtRequest)) as SearchCourtRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchCourtRequest create() => SearchCourtRequest._();
  SearchCourtRequest createEmptyInstance() => create();
  static $pb.PbList<SearchCourtRequest> createRepeated() => $pb.PbList<SearchCourtRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchCourtRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchCourtRequest>(create);
  static SearchCourtRequest? _defaultInstance;

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

class ListCourtResponse extends $pb.GeneratedMessage {
  factory ListCourtResponse({
    $core.Iterable<Court>? courts,
    $1.PaginationResponse? pagination,
  }) {
    final $result = create();
    if (courts != null) {
      $result.courts.addAll(courts);
    }
    if (pagination != null) {
      $result.pagination = pagination;
    }
    return $result;
  }
  ListCourtResponse._() : super();
  factory ListCourtResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListCourtResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCourtResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..pc<Court>(1, _omitFieldNames ? '' : 'courts', $pb.PbFieldType.PM, subBuilder: Court.create)
    ..aOM<$1.PaginationResponse>(2, _omitFieldNames ? '' : 'pagination', subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListCourtResponse clone() => ListCourtResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListCourtResponse copyWith(void Function(ListCourtResponse) updates) => super.copyWith((message) => updates(message as ListCourtResponse)) as ListCourtResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCourtResponse create() => ListCourtResponse._();
  ListCourtResponse createEmptyInstance() => create();
  static $pb.PbList<ListCourtResponse> createRepeated() => $pb.PbList<ListCourtResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCourtResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCourtResponse>(create);
  static ListCourtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Court> get courts => $_getList(0);

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
