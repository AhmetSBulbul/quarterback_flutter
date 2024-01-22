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

class Court extends $pb.GeneratedMessage {
  factory Court({
    $core.int? id,
    $core.String? name,
    $core.int? districtId,
    $core.String? address,
    $1.Location? location,
    $core.Iterable<$1.Media>? media,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (districtId != null) {
      $result.districtId = districtId;
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
    return $result;
  }
  Court._() : super();
  factory Court.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Court.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Court', package: const $pb.PackageName(_omitMessageNames ? '' : 'court'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'districtId', $pb.PbFieldType.O3, protoName: 'districtId')
    ..aOS(4, _omitFieldNames ? '' : 'address')
    ..aOM<$1.Location>(5, _omitFieldNames ? '' : 'location', subBuilder: $1.Location.create)
    ..pc<$1.Media>(6, _omitFieldNames ? '' : 'media', $pb.PbFieldType.PM, subBuilder: $1.Media.create)
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
  $core.int get districtId => $_getIZ(2);
  @$pb.TagNumber(3)
  set districtId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDistrictId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistrictId() => clearField(3);

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
