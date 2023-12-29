//
//  Generated code. Do not modify.
//  source: courtpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use courtDescriptor instead')
const Court$json = {
  '1': 'Court',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'districtId', '3': 3, '4': 1, '5': 5, '10': 'districtId'},
    {'1': 'address', '3': 4, '4': 1, '5': 9, '10': 'address'},
    {'1': 'location', '3': 5, '4': 1, '5': 11, '6': '.common.Location', '10': 'location'},
    {'1': 'medias', '3': 6, '4': 3, '5': 11, '6': '.common.Media', '10': 'medias'},
  ],
};

/// Descriptor for `Court`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtDescriptor = $convert.base64Decode(
    'CgVDb3VydBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIeCgpkaXN0cmljdE'
    'lkGAMgASgFUgpkaXN0cmljdElkEhgKB2FkZHJlc3MYBCABKAlSB2FkZHJlc3MSLAoIbG9jYXRp'
    'b24YBSABKAsyEC5jb21tb24uTG9jYXRpb25SCGxvY2F0aW9uEiUKBm1lZGlhcxgGIAMoCzINLm'
    'NvbW1vbi5NZWRpYVIGbWVkaWFz');

@$core.Deprecated('Use getCourtRequestDescriptor instead')
const GetCourtRequest$json = {
  '1': 'GetCourtRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetCourtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCourtRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRDb3VydFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use courtResponseDescriptor instead')
const CourtResponse$json = {
  '1': 'CourtResponse',
  '2': [
    {'1': 'court', '3': 1, '4': 1, '5': 11, '6': '.court.Court', '10': 'court'},
  ],
};

/// Descriptor for `CourtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtResponseDescriptor = $convert.base64Decode(
    'Cg1Db3VydFJlc3BvbnNlEiIKBWNvdXJ0GAEgASgLMgwuY291cnQuQ291cnRSBWNvdXJ0');

@$core.Deprecated('Use listCourtByLocationRequestDescriptor instead')
const ListCourtByLocationRequest$json = {
  '1': 'ListCourtByLocationRequest',
  '2': [
    {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.common.Location', '10': 'location'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListCourtByLocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCourtByLocationRequestDescriptor = $convert.base64Decode(
    'ChpMaXN0Q291cnRCeUxvY2F0aW9uUmVxdWVzdBIsCghsb2NhdGlvbhgBIAEoCzIQLmNvbW1vbi'
    '5Mb2NhdGlvblIIbG9jYXRpb24SOQoKcGFnaW5hdGlvbhgCIAEoCzIZLmNvbW1vbi5QYWdpbmF0'
    'aW9uUmVxdWVzdFIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use searchCourtRequestDescriptor instead')
const SearchCourtRequest$json = {
  '1': 'SearchCourtRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 11, '6': '.common.Query', '10': 'query'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `SearchCourtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCourtRequestDescriptor = $convert.base64Decode(
    'ChJTZWFyY2hDb3VydFJlcXVlc3QSIwoFcXVlcnkYASABKAsyDS5jb21tb24uUXVlcnlSBXF1ZX'
    'J5EjkKCnBhZ2luYXRpb24YAiABKAsyGS5jb21tb24uUGFnaW5hdGlvblJlcXVlc3RSCnBhZ2lu'
    'YXRpb24=');

@$core.Deprecated('Use listCourtResponseDescriptor instead')
const ListCourtResponse$json = {
  '1': 'ListCourtResponse',
  '2': [
    {'1': 'courts', '3': 1, '4': 3, '5': 11, '6': '.court.Court', '10': 'courts'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `ListCourtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCourtResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0Q291cnRSZXNwb25zZRIkCgZjb3VydHMYASADKAsyDC5jb3VydC5Db3VydFIGY291cn'
    'RzEjoKCnBhZ2luYXRpb24YAiABKAsyGi5jb21tb24uUGFnaW5hdGlvblJlc3BvbnNlUgpwYWdp'
    'bmF0aW9u');

