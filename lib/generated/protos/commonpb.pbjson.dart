//
//  Generated code. Do not modify.
//  source: commonpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use locationDescriptor instead')
const Location$json = {
  '1': 'Location',
  '2': [
    {'1': 'latitude', '3': 1, '4': 1, '5': 2, '10': 'latitude'},
    {'1': 'longitude', '3': 2, '4': 1, '5': 2, '10': 'longitude'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode(
    'CghMb2NhdGlvbhIaCghsYXRpdHVkZRgBIAEoAlIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAIgAS'
    'gCUglsb25naXR1ZGU=');

@$core.Deprecated('Use mediaDescriptor instead')
const Media$json = {
  '1': 'Media',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.common.Media.Type', '10': 'type'},
  ],
  '4': [Media_Type$json],
};

@$core.Deprecated('Use mediaDescriptor instead')
const Media_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'IMAGE', '2': 0},
    {'1': 'VIDEO', '2': 1},
  ],
};

/// Descriptor for `Media`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaDescriptor = $convert.base64Decode(
    'CgVNZWRpYRIOCgJpZBgBIAEoBVICaWQSEAoDdXJsGAIgASgJUgN1cmwSJgoEdHlwZRgDIAEoDj'
    'ISLmNvbW1vbi5NZWRpYS5UeXBlUgR0eXBlIhwKBFR5cGUSCQoFSU1BR0UQABIJCgVWSURFTxAB');

@$core.Deprecated('Use paginationRequestDescriptor instead')
const PaginationRequest$json = {
  '1': 'PaginationRequest',
  '2': [
    {'1': 'cursorId', '3': 1, '4': 1, '5': 5, '10': 'cursorId'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `PaginationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paginationRequestDescriptor = $convert.base64Decode(
    'ChFQYWdpbmF0aW9uUmVxdWVzdBIaCghjdXJzb3JJZBgBIAEoBVIIY3Vyc29ySWQSFAoFbGltaX'
    'QYAiABKAVSBWxpbWl0');

@$core.Deprecated('Use paginationResponseDescriptor instead')
const PaginationResponse$json = {
  '1': 'PaginationResponse',
  '2': [
    {'1': 'cursorId', '3': 1, '4': 1, '5': 5, '10': 'cursorId'},
    {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
  ],
};

/// Descriptor for `PaginationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paginationResponseDescriptor = $convert.base64Decode(
    'ChJQYWdpbmF0aW9uUmVzcG9uc2USGgoIY3Vyc29ySWQYASABKAVSCGN1cnNvcklkEhQKBXRvdG'
    'FsGAIgASgFUgV0b3RhbA==');

@$core.Deprecated('Use getByIdRequestDescriptor instead')
const GetByIdRequest$json = {
  '1': 'GetByIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRCeUlkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use queryDescriptor instead')
const Query$json = {
  '1': 'Query',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'query', '17': true},
    {'1': 'countryId', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'countryId', '17': true},
    {'1': 'cityId', '3': 3, '4': 1, '5': 5, '9': 2, '10': 'cityId', '17': true},
    {'1': 'districtId', '3': 4, '4': 1, '5': 5, '9': 3, '10': 'districtId', '17': true},
  ],
  '8': [
    {'1': '_query'},
    {'1': '_countryId'},
    {'1': '_cityId'},
    {'1': '_districtId'},
  ],
};

/// Descriptor for `Query`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDescriptor = $convert.base64Decode(
    'CgVRdWVyeRIZCgVxdWVyeRgBIAEoCUgAUgVxdWVyeYgBARIhCgljb3VudHJ5SWQYAiABKAVIAV'
    'IJY291bnRyeUlkiAEBEhsKBmNpdHlJZBgDIAEoBUgCUgZjaXR5SWSIAQESIwoKZGlzdHJpY3RJ'
    'ZBgEIAEoBUgDUgpkaXN0cmljdElkiAEBQggKBl9xdWVyeUIMCgpfY291bnRyeUlkQgkKB19jaX'
    'R5SWRCDQoLX2Rpc3RyaWN0SWQ=');

@$core.Deprecated('Use successResponseDescriptor instead')
const SuccessResponse$json = {
  '1': 'SuccessResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SuccessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List successResponseDescriptor = $convert.base64Decode(
    'Cg9TdWNjZXNzUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use fileDescriptor instead')
const File$json = {
  '1': 'File',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode(
    'CgRGaWxlEhIKBGRhdGEYASABKAxSBGRhdGE=');

@$core.Deprecated('Use badgeDescriptor instead')
const Badge$json = {
  '1': 'Badge',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'assetUrl', '3': 4, '4': 1, '5': 9, '10': 'assetUrl'},
  ],
};

/// Descriptor for `Badge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List badgeDescriptor = $convert.base64Decode(
    'CgVCYWRnZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdG'
    'lvbhgDIAEoCVILZGVzY3JpcHRpb24SGgoIYXNzZXRVcmwYBCABKAlSCGFzc2V0VXJs');

@$core.Deprecated('Use commentRequestDescriptor instead')
const CommentRequest$json = {
  '1': 'CommentRequest',
  '2': [
    {'1': 'targetId', '3': 1, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `CommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentRequestDescriptor = $convert.base64Decode(
    'Cg5Db21tZW50UmVxdWVzdBIaCgh0YXJnZXRJZBgBIAEoBVIIdGFyZ2V0SWQSGAoHY29udGVudB'
    'gCIAEoCVIHY29udGVudA==');

@$core.Deprecated('Use commentDescriptor instead')
const Comment$json = {
  '1': 'Comment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'commenterId', '3': 2, '4': 1, '5': 5, '10': 'commenterId'},
    {'1': 'targetId', '3': 3, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    {'1': 'isHidden', '3': 5, '4': 1, '5': 8, '10': 'isHidden'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode(
    'CgdDb21tZW50Eg4KAmlkGAEgASgFUgJpZBIgCgtjb21tZW50ZXJJZBgCIAEoBVILY29tbWVudG'
    'VySWQSGgoIdGFyZ2V0SWQYAyABKAVSCHRhcmdldElkEhgKB2NvbnRlbnQYBCABKAlSB2NvbnRl'
    'bnQSGgoIaXNIaWRkZW4YBSABKAhSCGlzSGlkZGVu');

@$core.Deprecated('Use commentResponseDescriptor instead')
const CommentResponse$json = {
  '1': 'CommentResponse',
  '2': [
    {'1': 'comment', '3': 1, '4': 1, '5': 11, '6': '.common.Comment', '10': 'comment'},
  ],
};

/// Descriptor for `CommentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentResponseDescriptor = $convert.base64Decode(
    'Cg9Db21tZW50UmVzcG9uc2USKQoHY29tbWVudBgBIAEoCzIPLmNvbW1vbi5Db21tZW50Ugdjb2'
    '1tZW50');

@$core.Deprecated('Use regionDescriptor instead')
const Region$json = {
  '1': 'Region',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Region`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regionDescriptor = $convert.base64Decode(
    'CgZSZWdpb24SDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');

