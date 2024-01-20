//
//  Generated code. Do not modify.
//  source: regionpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Country extends $pb.GeneratedMessage {
  factory Country({
    $core.int? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Country._() : super();
  factory Country.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Country.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Country', package: const $pb.PackageName(_omitMessageNames ? '' : 'region'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Country clone() => Country()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Country copyWith(void Function(Country) updates) => super.copyWith((message) => updates(message as Country)) as Country;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Country create() => Country._();
  Country createEmptyInstance() => create();
  static $pb.PbList<Country> createRepeated() => $pb.PbList<Country>();
  @$core.pragma('dart2js:noInline')
  static Country getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Country>(create);
  static Country? _defaultInstance;

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
}

class City extends $pb.GeneratedMessage {
  factory City({
    $core.int? id,
    $core.String? name,
    $core.int? countryId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (countryId != null) {
      $result.countryId = countryId;
    }
    return $result;
  }
  City._() : super();
  factory City.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory City.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'City', package: const $pb.PackageName(_omitMessageNames ? '' : 'region'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'countryId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  City clone() => City()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  City copyWith(void Function(City) updates) => super.copyWith((message) => updates(message as City)) as City;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static City create() => City._();
  City createEmptyInstance() => create();
  static $pb.PbList<City> createRepeated() => $pb.PbList<City>();
  @$core.pragma('dart2js:noInline')
  static City getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<City>(create);
  static City? _defaultInstance;

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
  $core.int get countryId => $_getIZ(2);
  @$pb.TagNumber(3)
  set countryId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountryId() => clearField(3);
}

class District extends $pb.GeneratedMessage {
  factory District({
    $core.int? id,
    $core.String? name,
    $core.int? cityId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (cityId != null) {
      $result.cityId = cityId;
    }
    return $result;
  }
  District._() : super();
  factory District.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory District.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'District', package: const $pb.PackageName(_omitMessageNames ? '' : 'region'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'cityId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  District clone() => District()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  District copyWith(void Function(District) updates) => super.copyWith((message) => updates(message as District)) as District;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static District create() => District._();
  District createEmptyInstance() => create();
  static $pb.PbList<District> createRepeated() => $pb.PbList<District>();
  @$core.pragma('dart2js:noInline')
  static District getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<District>(create);
  static District? _defaultInstance;

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
  $core.int get cityId => $_getIZ(2);
  @$pb.TagNumber(3)
  set cityId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCityId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCityId() => clearField(3);
}

class Region extends $pb.GeneratedMessage {
  factory Region({
    Country? country,
    City? city,
    District? district,
  }) {
    final $result = create();
    if (country != null) {
      $result.country = country;
    }
    if (city != null) {
      $result.city = city;
    }
    if (district != null) {
      $result.district = district;
    }
    return $result;
  }
  Region._() : super();
  factory Region.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Region.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Region', package: const $pb.PackageName(_omitMessageNames ? '' : 'region'), createEmptyInstance: create)
    ..aOM<Country>(1, _omitFieldNames ? '' : 'country', subBuilder: Country.create)
    ..aOM<City>(2, _omitFieldNames ? '' : 'city', subBuilder: City.create)
    ..aOM<District>(3, _omitFieldNames ? '' : 'district', subBuilder: District.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Region clone() => Region()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Region copyWith(void Function(Region) updates) => super.copyWith((message) => updates(message as Region)) as Region;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Region create() => Region._();
  Region createEmptyInstance() => create();
  static $pb.PbList<Region> createRepeated() => $pb.PbList<Region>();
  @$core.pragma('dart2js:noInline')
  static Region getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Region>(create);
  static Region? _defaultInstance;

  @$pb.TagNumber(1)
  Country get country => $_getN(0);
  @$pb.TagNumber(1)
  set country(Country v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);
  @$pb.TagNumber(1)
  Country ensureCountry() => $_ensure(0);

  @$pb.TagNumber(2)
  City get city => $_getN(1);
  @$pb.TagNumber(2)
  set city(City v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCity() => clearField(2);
  @$pb.TagNumber(2)
  City ensureCity() => $_ensure(1);

  @$pb.TagNumber(3)
  District get district => $_getN(2);
  @$pb.TagNumber(3)
  set district(District v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDistrict() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistrict() => clearField(3);
  @$pb.TagNumber(3)
  District ensureDistrict() => $_ensure(2);
}

class CountryListResponse extends $pb.GeneratedMessage {
  factory CountryListResponse({
    $core.Iterable<Country>? countries,
  }) {
    final $result = create();
    if (countries != null) {
      $result.countries.addAll(countries);
    }
    return $result;
  }
  CountryListResponse._() : super();
  factory CountryListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountryListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CountryListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'region'), createEmptyInstance: create)
    ..pc<Country>(1, _omitFieldNames ? '' : 'countries', $pb.PbFieldType.PM, subBuilder: Country.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountryListResponse clone() => CountryListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountryListResponse copyWith(void Function(CountryListResponse) updates) => super.copyWith((message) => updates(message as CountryListResponse)) as CountryListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CountryListResponse create() => CountryListResponse._();
  CountryListResponse createEmptyInstance() => create();
  static $pb.PbList<CountryListResponse> createRepeated() => $pb.PbList<CountryListResponse>();
  @$core.pragma('dart2js:noInline')
  static CountryListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountryListResponse>(create);
  static CountryListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Country> get countries => $_getList(0);
}

class CityListResponse extends $pb.GeneratedMessage {
  factory CityListResponse({
    $core.Iterable<City>? cities,
  }) {
    final $result = create();
    if (cities != null) {
      $result.cities.addAll(cities);
    }
    return $result;
  }
  CityListResponse._() : super();
  factory CityListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CityListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CityListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'region'), createEmptyInstance: create)
    ..pc<City>(2, _omitFieldNames ? '' : 'cities', $pb.PbFieldType.PM, subBuilder: City.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CityListResponse clone() => CityListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CityListResponse copyWith(void Function(CityListResponse) updates) => super.copyWith((message) => updates(message as CityListResponse)) as CityListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CityListResponse create() => CityListResponse._();
  CityListResponse createEmptyInstance() => create();
  static $pb.PbList<CityListResponse> createRepeated() => $pb.PbList<CityListResponse>();
  @$core.pragma('dart2js:noInline')
  static CityListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CityListResponse>(create);
  static CityListResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<City> get cities => $_getList(0);
}

class DistrictListResponse extends $pb.GeneratedMessage {
  factory DistrictListResponse({
    $core.Iterable<District>? districts,
  }) {
    final $result = create();
    if (districts != null) {
      $result.districts.addAll(districts);
    }
    return $result;
  }
  DistrictListResponse._() : super();
  factory DistrictListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DistrictListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DistrictListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'region'), createEmptyInstance: create)
    ..pc<District>(3, _omitFieldNames ? '' : 'districts', $pb.PbFieldType.PM, subBuilder: District.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DistrictListResponse clone() => DistrictListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DistrictListResponse copyWith(void Function(DistrictListResponse) updates) => super.copyWith((message) => updates(message as DistrictListResponse)) as DistrictListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DistrictListResponse create() => DistrictListResponse._();
  DistrictListResponse createEmptyInstance() => create();
  static $pb.PbList<DistrictListResponse> createRepeated() => $pb.PbList<DistrictListResponse>();
  @$core.pragma('dart2js:noInline')
  static DistrictListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DistrictListResponse>(create);
  static DistrictListResponse? _defaultInstance;

  @$pb.TagNumber(3)
  $core.List<District> get districts => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
