//
//  Generated code. Do not modify.
//  source: userpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userSearchRequestDescriptor instead')
const UserSearchRequest$json = {
  '1': 'UserSearchRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 11, '6': '.common.Query', '10': 'query'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `UserSearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSearchRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyU2VhcmNoUmVxdWVzdBIjCgVxdWVyeRgBIAEoCzINLmNvbW1vbi5RdWVyeVIFcXVlcn'
    'kSOQoKcGFnaW5hdGlvbhgCIAEoCzIZLmNvbW1vbi5QYWdpbmF0aW9uUmVxdWVzdFIKcGFnaW5h'
    'dGlvbg==');

@$core.Deprecated('Use userUpdateRequestDescriptor instead')
const UserUpdateRequest$json = {
  '1': 'UserUpdateRequest',
  '2': [
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'lastname', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'lastname', '17': true},
    {'1': 'districtID', '3': 6, '4': 1, '5': 5, '9': 2, '10': 'districtID', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_lastname'},
    {'1': '_districtID'},
  ],
  '9': [
    {'1': 1, '2': 2},
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `UserUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUpdateRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyVXBkYXRlUmVxdWVzdBIXCgRuYW1lGAQgASgJSABSBG5hbWWIAQESHwoIbGFzdG5hbW'
    'UYBSABKAlIAVIIbGFzdG5hbWWIAQESIwoKZGlzdHJpY3RJRBgGIAEoBUgCUgpkaXN0cmljdElE'
    'iAEBQgcKBV9uYW1lQgsKCV9sYXN0bmFtZUINCgtfZGlzdHJpY3RJREoECAEQAkoECAIQA0oECA'
    'MQBA==');

@$core.Deprecated('Use updateAvatarRequestDescriptor instead')
const UpdateAvatarRequest$json = {
  '1': 'UpdateAvatarRequest',
  '2': [
    {'1': 'avatarFileId', '3': 1, '4': 1, '5': 5, '10': 'avatarFileId'},
  ],
};

/// Descriptor for `UpdateAvatarRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAvatarRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVBdmF0YXJSZXF1ZXN0EiIKDGF2YXRhckZpbGVJZBgBIAEoBVIMYXZhdGFyRmlsZU'
    'lk');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'lastname', '3': 5, '4': 1, '5': 9, '10': 'lastname'},
    {'1': 'avatarPath', '3': 6, '4': 1, '5': 9, '10': 'avatarPath'},
    {'1': 'password', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'password', '17': true},
    {'1': 'districtID', '3': 8, '4': 1, '5': 5, '10': 'districtID'},
  ],
  '8': [
    {'1': '_password'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSGgoIdXNlcm5hbW'
    'UYAyABKAlSCHVzZXJuYW1lEhIKBG5hbWUYBCABKAlSBG5hbWUSGgoIbGFzdG5hbWUYBSABKAlS'
    'CGxhc3RuYW1lEh4KCmF2YXRhclBhdGgYBiABKAlSCmF2YXRhclBhdGgSHwoIcGFzc3dvcmQYBy'
    'ABKAlIAFIIcGFzc3dvcmSIAQESHgoKZGlzdHJpY3RJRBgIIAEoBVIKZGlzdHJpY3RJREILCglf'
    'cGFzc3dvcmQ=');

@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = {
  '1': 'UserResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode(
    'CgxVc2VyUmVzcG9uc2USHgoEdXNlchgBIAEoCzIKLnVzZXIuVXNlclIEdXNlcg==');

@$core.Deprecated('Use userListResponseDescriptor instead')
const UserListResponse$json = {
  '1': 'UserListResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 3, '5': 11, '6': '.user.User', '10': 'user'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `UserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListResponseDescriptor = $convert.base64Decode(
    'ChBVc2VyTGlzdFJlc3BvbnNlEh4KBHVzZXIYASADKAsyCi51c2VyLlVzZXJSBHVzZXISOgoKcG'
    'FnaW5hdGlvbhgCIAEoCzIaLmNvbW1vbi5QYWdpbmF0aW9uUmVzcG9uc2VSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use followResponseDescriptor instead')
const FollowResponse$json = {
  '1': 'FollowResponse',
  '2': [
    {'1': 'isFollowing', '3': 2, '4': 1, '5': 8, '10': 'isFollowing'},
    {'1': 'subjectUserID', '3': 3, '4': 1, '5': 5, '10': 'subjectUserID'},
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
};

/// Descriptor for `FollowResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followResponseDescriptor = $convert.base64Decode(
    'Cg5Gb2xsb3dSZXNwb25zZRIgCgtpc0ZvbGxvd2luZxgCIAEoCFILaXNGb2xsb3dpbmcSJAoNc3'
    'ViamVjdFVzZXJJRBgDIAEoBVINc3ViamVjdFVzZXJJREoECAEQAg==');

@$core.Deprecated('Use blockResponseDescriptor instead')
const BlockResponse$json = {
  '1': 'BlockResponse',
  '2': [
    {'1': 'isBlocked', '3': 2, '4': 1, '5': 8, '10': 'isBlocked'},
    {'1': 'subjectUserID', '3': 3, '4': 1, '5': 5, '10': 'subjectUserID'},
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
};

/// Descriptor for `BlockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockResponseDescriptor = $convert.base64Decode(
    'Cg1CbG9ja1Jlc3BvbnNlEhwKCWlzQmxvY2tlZBgCIAEoCFIJaXNCbG9ja2VkEiQKDXN1YmplY3'
    'RVc2VySUQYAyABKAVSDXN1YmplY3RVc2VySURKBAgBEAI=');

