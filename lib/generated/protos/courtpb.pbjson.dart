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
    {'1': 'district', '3': 3, '4': 1, '5': 11, '6': '.region.District', '10': 'district'},
    {'1': 'address', '3': 4, '4': 1, '5': 9, '10': 'address'},
    {'1': 'location', '3': 5, '4': 1, '5': 11, '6': '.common.Location', '10': 'location'},
    {'1': 'media', '3': 6, '4': 3, '5': 11, '6': '.common.Media', '10': 'media'},
    {'1': 'checkInCount', '3': 7, '4': 1, '5': 5, '10': 'checkInCount'},
    {'1': 'commentCount', '3': 8, '4': 1, '5': 5, '10': 'commentCount'},
  ],
};

/// Descriptor for `Court`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtDescriptor = $convert.base64Decode(
    'CgVDb3VydBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIsCghkaXN0cmljdB'
    'gDIAEoCzIQLnJlZ2lvbi5EaXN0cmljdFIIZGlzdHJpY3QSGAoHYWRkcmVzcxgEIAEoCVIHYWRk'
    'cmVzcxIsCghsb2NhdGlvbhgFIAEoCzIQLmNvbW1vbi5Mb2NhdGlvblIIbG9jYXRpb24SIwoFbW'
    'VkaWEYBiADKAsyDS5jb21tb24uTWVkaWFSBW1lZGlhEiIKDGNoZWNrSW5Db3VudBgHIAEoBVIM'
    'Y2hlY2tJbkNvdW50EiIKDGNvbW1lbnRDb3VudBgIIAEoBVIMY29tbWVudENvdW50');

@$core.Deprecated('Use courtCommentRequestDescriptor instead')
const CourtCommentRequest$json = {
  '1': 'CourtCommentRequest',
  '2': [
    {'1': 'courtId', '3': 1, '4': 1, '5': 5, '10': 'courtId'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `CourtCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtCommentRequestDescriptor = $convert.base64Decode(
    'ChNDb3VydENvbW1lbnRSZXF1ZXN0EhgKB2NvdXJ0SWQYASABKAVSB2NvdXJ0SWQSGAoHY29udG'
    'VudBgCIAEoCVIHY29udGVudA==');

@$core.Deprecated('Use courtCommentDescriptor instead')
const CourtComment$json = {
  '1': 'CourtComment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'courtId', '3': 2, '4': 1, '5': 5, '10': 'courtId'},
    {'1': 'sender', '3': 3, '4': 1, '5': 11, '6': '.user.User', '10': 'sender'},
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `CourtComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtCommentDescriptor = $convert.base64Decode(
    'CgxDb3VydENvbW1lbnQSDgoCaWQYASABKAVSAmlkEhgKB2NvdXJ0SWQYAiABKAVSB2NvdXJ0SW'
    'QSIgoGc2VuZGVyGAMgASgLMgoudXNlci5Vc2VyUgZzZW5kZXISGAoHY29udGVudBgEIAEoCVIH'
    'Y29udGVudA==');

@$core.Deprecated('Use courtCommentListRequestDescriptor instead')
const CourtCommentListRequest$json = {
  '1': 'CourtCommentListRequest',
  '2': [
    {'1': 'courtId', '3': 1, '4': 1, '5': 5, '10': 'courtId'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `CourtCommentListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtCommentListRequestDescriptor = $convert.base64Decode(
    'ChdDb3VydENvbW1lbnRMaXN0UmVxdWVzdBIYCgdjb3VydElkGAEgASgFUgdjb3VydElkEjkKCn'
    'BhZ2luYXRpb24YAiABKAsyGS5jb21tb24uUGFnaW5hdGlvblJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use courtCommentListResponseDescriptor instead')
const CourtCommentListResponse$json = {
  '1': 'CourtCommentListResponse',
  '2': [
    {'1': 'comments', '3': 1, '4': 3, '5': 11, '6': '.court.CourtComment', '10': 'comments'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `CourtCommentListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtCommentListResponseDescriptor = $convert.base64Decode(
    'ChhDb3VydENvbW1lbnRMaXN0UmVzcG9uc2USLwoIY29tbWVudHMYASADKAsyEy5jb3VydC5Db3'
    'VydENvbW1lbnRSCGNvbW1lbnRzEjoKCnBhZ2luYXRpb24YAiABKAsyGi5jb21tb24uUGFnaW5h'
    'dGlvblJlc3BvbnNlUgpwYWdpbmF0aW9u');

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

@$core.Deprecated('Use checkInCourtResponseDescriptor instead')
const CheckInCourtResponse$json = {
  '1': 'CheckInCourtResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'checkedIn', '3': 2, '4': 1, '5': 8, '10': 'checkedIn'},
  ],
};

/// Descriptor for `CheckInCourtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkInCourtResponseDescriptor = $convert.base64Decode(
    'ChRDaGVja0luQ291cnRSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSHAoJY2hlY2tlZEluGAIgAS'
    'gIUgljaGVja2VkSW4=');

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

