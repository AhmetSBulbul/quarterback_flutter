//
//  Generated code. Do not modify.
//  source: pointspb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryByDistrictDescriptor instead')
const QueryByDistrict$json = {
  '1': 'QueryByDistrict',
  '2': [
    {'1': 'districtID', '3': 1, '4': 1, '5': 5, '10': 'districtID'},
  ],
};

/// Descriptor for `QueryByDistrict`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryByDistrictDescriptor = $convert.base64Decode(
    'Cg9RdWVyeUJ5RGlzdHJpY3QSHgoKZGlzdHJpY3RJRBgBIAEoBVIKZGlzdHJpY3RJRA==');

@$core.Deprecated('Use queryByUserDescriptor instead')
const QueryByUser$json = {
  '1': 'QueryByUser',
  '2': [
    {'1': 'playerID', '3': 1, '4': 1, '5': 5, '10': 'playerID'},
  ],
};

/// Descriptor for `QueryByUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryByUserDescriptor = $convert.base64Decode(
    'CgtRdWVyeUJ5VXNlchIaCghwbGF5ZXJJRBgBIAEoBVIIcGxheWVySUQ=');

@$core.Deprecated('Use pointsByDistrictDescriptor instead')
const PointsByDistrict$json = {
  '1': 'PointsByDistrict',
  '2': [
    {'1': 'user_points', '3': 2, '4': 3, '5': 11, '6': '.points.UserPoints', '10': 'userPoints'},
  ],
};

/// Descriptor for `PointsByDistrict`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointsByDistrictDescriptor = $convert.base64Decode(
    'ChBQb2ludHNCeURpc3RyaWN0EjMKC3VzZXJfcG9pbnRzGAIgAygLMhIucG9pbnRzLlVzZXJQb2'
    'ludHNSCnVzZXJQb2ludHM=');

@$core.Deprecated('Use userPointsDescriptor instead')
const UserPoints$json = {
  '1': 'UserPoints',
  '2': [
    {'1': 'playerID', '3': 1, '4': 1, '5': 5, '10': 'playerID'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'wins', '3': 3, '4': 1, '5': 5, '10': 'wins'},
    {'1': 'losses', '3': 4, '4': 1, '5': 5, '10': 'losses'},
    {'1': 'cancelled', '3': 5, '4': 1, '5': 5, '10': 'cancelled'},
    {'1': 'totalPoints', '3': 6, '4': 1, '5': 5, '10': 'totalPoints'},
  ],
};

/// Descriptor for `UserPoints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPointsDescriptor = $convert.base64Decode(
    'CgpVc2VyUG9pbnRzEhoKCHBsYXllcklEGAEgASgFUghwbGF5ZXJJRBIaCgh1c2VybmFtZRgCIA'
    'EoCVIIdXNlcm5hbWUSEgoEd2lucxgDIAEoBVIEd2lucxIWCgZsb3NzZXMYBCABKAVSBmxvc3Nl'
    'cxIcCgljYW5jZWxsZWQYBSABKAVSCWNhbmNlbGxlZBIgCgt0b3RhbFBvaW50cxgGIAEoBVILdG'
    '90YWxQb2ludHM=');

@$core.Deprecated('Use userStatsDescriptor instead')
const UserStats$json = {
  '1': 'UserStats',
  '2': [
    {'1': 'totalGames', '3': 1, '4': 1, '5': 5, '10': 'totalGames'},
    {'1': 'wins', '3': 2, '4': 1, '5': 5, '10': 'wins'},
    {'1': 'losses', '3': 3, '4': 1, '5': 5, '10': 'losses'},
    {'1': 'cancelled', '3': 4, '4': 1, '5': 5, '10': 'cancelled'},
    {'1': 'totalPoints', '3': 5, '4': 1, '5': 5, '10': 'totalPoints'},
    {'1': 'rank', '3': 6, '4': 1, '5': 5, '10': 'rank'},
  ],
};

/// Descriptor for `UserStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStatsDescriptor = $convert.base64Decode(
    'CglVc2VyU3RhdHMSHgoKdG90YWxHYW1lcxgBIAEoBVIKdG90YWxHYW1lcxISCgR3aW5zGAIgAS'
    'gFUgR3aW5zEhYKBmxvc3NlcxgDIAEoBVIGbG9zc2VzEhwKCWNhbmNlbGxlZBgEIAEoBVIJY2Fu'
    'Y2VsbGVkEiAKC3RvdGFsUG9pbnRzGAUgASgFUgt0b3RhbFBvaW50cxISCgRyYW5rGAYgASgFUg'
    'RyYW5r');

