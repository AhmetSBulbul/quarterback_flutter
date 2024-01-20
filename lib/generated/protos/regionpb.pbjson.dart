//
//  Generated code. Do not modify.
//  source: regionpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use countryDescriptor instead')
const Country$json = {
  '1': 'Country',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Country`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countryDescriptor = $convert.base64Decode(
    'CgdDb3VudHJ5Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use cityDescriptor instead')
const City$json = {
  '1': 'City',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'country_id', '3': 3, '4': 1, '5': 5, '10': 'countryId'},
  ],
};

/// Descriptor for `City`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cityDescriptor = $convert.base64Decode(
    'CgRDaXR5Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh0KCmNvdW50cnlfaW'
    'QYAyABKAVSCWNvdW50cnlJZA==');

@$core.Deprecated('Use districtDescriptor instead')
const District$json = {
  '1': 'District',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'city_id', '3': 3, '4': 1, '5': 5, '10': 'cityId'},
  ],
};

/// Descriptor for `District`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List districtDescriptor = $convert.base64Decode(
    'CghEaXN0cmljdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIXCgdjaXR5X2'
    'lkGAMgASgFUgZjaXR5SWQ=');

@$core.Deprecated('Use regionDescriptor instead')
const Region$json = {
  '1': 'Region',
  '2': [
    {'1': 'country', '3': 1, '4': 1, '5': 11, '6': '.region.Country', '10': 'country'},
    {'1': 'city', '3': 2, '4': 1, '5': 11, '6': '.region.City', '10': 'city'},
    {'1': 'district', '3': 3, '4': 1, '5': 11, '6': '.region.District', '10': 'district'},
  ],
};

/// Descriptor for `Region`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regionDescriptor = $convert.base64Decode(
    'CgZSZWdpb24SKQoHY291bnRyeRgBIAEoCzIPLnJlZ2lvbi5Db3VudHJ5Ugdjb3VudHJ5EiAKBG'
    'NpdHkYAiABKAsyDC5yZWdpb24uQ2l0eVIEY2l0eRIsCghkaXN0cmljdBgDIAEoCzIQLnJlZ2lv'
    'bi5EaXN0cmljdFIIZGlzdHJpY3Q=');

@$core.Deprecated('Use countryListResponseDescriptor instead')
const CountryListResponse$json = {
  '1': 'CountryListResponse',
  '2': [
    {'1': 'countries', '3': 1, '4': 3, '5': 11, '6': '.region.Country', '10': 'countries'},
  ],
};

/// Descriptor for `CountryListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countryListResponseDescriptor = $convert.base64Decode(
    'ChNDb3VudHJ5TGlzdFJlc3BvbnNlEi0KCWNvdW50cmllcxgBIAMoCzIPLnJlZ2lvbi5Db3VudH'
    'J5Ugljb3VudHJpZXM=');

@$core.Deprecated('Use cityListResponseDescriptor instead')
const CityListResponse$json = {
  '1': 'CityListResponse',
  '2': [
    {'1': 'cities', '3': 2, '4': 3, '5': 11, '6': '.region.City', '10': 'cities'},
  ],
};

/// Descriptor for `CityListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cityListResponseDescriptor = $convert.base64Decode(
    'ChBDaXR5TGlzdFJlc3BvbnNlEiQKBmNpdGllcxgCIAMoCzIMLnJlZ2lvbi5DaXR5UgZjaXRpZX'
    'M=');

@$core.Deprecated('Use districtListResponseDescriptor instead')
const DistrictListResponse$json = {
  '1': 'DistrictListResponse',
  '2': [
    {'1': 'districts', '3': 3, '4': 3, '5': 11, '6': '.region.District', '10': 'districts'},
  ],
};

/// Descriptor for `DistrictListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List districtListResponseDescriptor = $convert.base64Decode(
    'ChREaXN0cmljdExpc3RSZXNwb25zZRIuCglkaXN0cmljdHMYAyADKAsyEC5yZWdpb24uRGlzdH'
    'JpY3RSCWRpc3RyaWN0cw==');

