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
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email', '17': true},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'username', '17': true},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'name', '17': true},
    {'1': 'lastname', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'lastname', '17': true},
  ],
  '8': [
    {'1': '_email'},
    {'1': '_username'},
    {'1': '_name'},
    {'1': '_lastname'},
  ],
};

/// Descriptor for `UserUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUpdateRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyVXBkYXRlUmVxdWVzdBIZCgVlbWFpbBgCIAEoCUgAUgVlbWFpbIgBARIfCgh1c2Vybm'
    'FtZRgDIAEoCUgBUgh1c2VybmFtZYgBARIXCgRuYW1lGAQgASgJSAJSBG5hbWWIAQESHwoIbGFz'
    'dG5hbWUYBSABKAlIA1IIbGFzdG5hbWWIAQFCCAoGX2VtYWlsQgsKCV91c2VybmFtZUIHCgVfbm'
    'FtZUILCglfbGFzdG5hbWU=');

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
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgFUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSGgoIdXNlcm5hbW'
    'UYAyABKAlSCHVzZXJuYW1lEhIKBG5hbWUYBCABKAlSBG5hbWUSGgoIbGFzdG5hbWUYBSABKAlS'
    'CGxhc3RuYW1lEh4KCmF2YXRhclBhdGgYBiABKAlSCmF2YXRhclBhdGg=');

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
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
    {'1': 'isFollowing', '3': 2, '4': 1, '5': 8, '10': 'isFollowing'},
  ],
};

/// Descriptor for `FollowResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followResponseDescriptor = $convert.base64Decode(
    'Cg5Gb2xsb3dSZXNwb25zZRIeCgR1c2VyGAEgASgLMgoudXNlci5Vc2VyUgR1c2VyEiAKC2lzRm'
    '9sbG93aW5nGAIgASgIUgtpc0ZvbGxvd2luZw==');

@$core.Deprecated('Use blockResponseDescriptor instead')
const BlockResponse$json = {
  '1': 'BlockResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.User', '10': 'user'},
    {'1': 'isBlocked', '3': 2, '4': 1, '5': 8, '10': 'isBlocked'},
  ],
};

/// Descriptor for `BlockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockResponseDescriptor = $convert.base64Decode(
    'Cg1CbG9ja1Jlc3BvbnNlEh4KBHVzZXIYASABKAsyCi51c2VyLlVzZXJSBHVzZXISHAoJaXNCbG'
    '9ja2VkGAIgASgIUglpc0Jsb2NrZWQ=');

