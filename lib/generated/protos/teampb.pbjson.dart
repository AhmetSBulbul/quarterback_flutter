//
//  Generated code. Do not modify.
//  source: teampb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use teamResponseDescriptor instead')
const TeamResponse$json = {
  '1': 'TeamResponse',
  '2': [
    {'1': 'team', '3': 1, '4': 1, '5': 11, '6': '.team.Team', '10': 'team'},
  ],
};

/// Descriptor for `TeamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamResponseDescriptor = $convert.base64Decode(
    'CgxUZWFtUmVzcG9uc2USHgoEdGVhbRgBIAEoCzIKLnRlYW0uVGVhbVIEdGVhbQ==');

@$core.Deprecated('Use listTeamRequestDescriptor instead')
const ListTeamRequest$json = {
  '1': 'ListTeamRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 11, '6': '.common.Query', '10': 'query'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListTeamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTeamRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0VGVhbVJlcXVlc3QSIwoFcXVlcnkYASABKAsyDS5jb21tb24uUXVlcnlSBXF1ZXJ5Ej'
    'kKCnBhZ2luYXRpb24YAiABKAsyGS5jb21tb24uUGFnaW5hdGlvblJlcXVlc3RSCnBhZ2luYXRp'
    'b24=');

@$core.Deprecated('Use listTeamResponseDescriptor instead')
const ListTeamResponse$json = {
  '1': 'ListTeamResponse',
  '2': [
    {'1': 'teams', '3': 1, '4': 3, '5': 11, '6': '.team.Team', '10': 'teams'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.common.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `ListTeamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTeamResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0VGVhbVJlc3BvbnNlEiAKBXRlYW1zGAEgAygLMgoudGVhbS5UZWFtUgV0ZWFtcxI6Cg'
    'pwYWdpbmF0aW9uGAIgASgLMhouY29tbW9uLlBhZ2luYXRpb25SZXNwb25zZVIKcGFnaW5hdGlv'
    'bg==');

@$core.Deprecated('Use createTeamRequestDescriptor instead')
const CreateTeamRequest$json = {
  '1': 'CreateTeamRequest',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'districtId', '3': 4, '4': 1, '5': 5, '10': 'districtId'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `CreateTeamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTeamRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUZWFtUmVxdWVzdBISCgRuYW1lGAIgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9uGA'
    'MgASgJSABSC2Rlc2NyaXB0aW9uiAEBEh4KCmRpc3RyaWN0SWQYBCABKAVSCmRpc3RyaWN0SWRC'
    'DgoMX2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use invitePlayerRequestDescriptor instead')
const InvitePlayerRequest$json = {
  '1': 'InvitePlayerRequest',
  '2': [
    {'1': 'playerId', '3': 1, '4': 1, '5': 5, '10': 'playerId'},
  ],
};

/// Descriptor for `InvitePlayerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitePlayerRequestDescriptor = $convert.base64Decode(
    'ChNJbnZpdGVQbGF5ZXJSZXF1ZXN0EhoKCHBsYXllcklkGAEgASgFUghwbGF5ZXJJZA==');

@$core.Deprecated('Use acceptInviteRequestDescriptor instead')
const AcceptInviteRequest$json = {
  '1': 'AcceptInviteRequest',
  '2': [
    {'1': 'inviteId', '3': 1, '4': 1, '5': 5, '10': 'inviteId'},
  ],
};

/// Descriptor for `AcceptInviteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptInviteRequestDescriptor = $convert.base64Decode(
    'ChNBY2NlcHRJbnZpdGVSZXF1ZXN0EhoKCGludml0ZUlkGAEgASgFUghpbnZpdGVJZA==');

@$core.Deprecated('Use teamDescriptor instead')
const Team$json = {
  '1': 'Team',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'districtId', '3': 4, '4': 1, '5': 5, '10': 'districtId'},
    {'1': 'avatarPath', '3': 5, '4': 1, '5': 9, '10': 'avatarPath'},
  ],
};

/// Descriptor for `Team`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamDescriptor = $convert.base64Decode(
    'CgRUZWFtEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW'
    '9uGAMgASgJUgtkZXNjcmlwdGlvbhIeCgpkaXN0cmljdElkGAQgASgFUgpkaXN0cmljdElkEh4K'
    'CmF2YXRhclBhdGgYBSABKAlSCmF2YXRhclBhdGg=');

@$core.Deprecated('Use teamListDescriptor instead')
const TeamList$json = {
  '1': 'TeamList',
  '2': [
    {'1': 'teams', '3': 1, '4': 3, '5': 11, '6': '.team.Team', '10': 'teams'},
  ],
};

/// Descriptor for `TeamList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamListDescriptor = $convert.base64Decode(
    'CghUZWFtTGlzdBIgCgV0ZWFtcxgBIAMoCzIKLnRlYW0uVGVhbVIFdGVhbXM=');

@$core.Deprecated('Use teamWithPlayersDescriptor instead')
const TeamWithPlayers$json = {
  '1': 'TeamWithPlayers',
  '2': [
    {'1': 'team', '3': 1, '4': 1, '5': 11, '6': '.team.Team', '10': 'team'},
    {'1': 'players', '3': 2, '4': 3, '5': 11, '6': '.user.User', '10': 'players'},
  ],
};

/// Descriptor for `TeamWithPlayers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamWithPlayersDescriptor = $convert.base64Decode(
    'Cg9UZWFtV2l0aFBsYXllcnMSHgoEdGVhbRgBIAEoCzIKLnRlYW0uVGVhbVIEdGVhbRIkCgdwbG'
    'F5ZXJzGAIgAygLMgoudXNlci5Vc2VyUgdwbGF5ZXJz');

