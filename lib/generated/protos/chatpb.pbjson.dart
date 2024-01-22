//
//  Generated code. Do not modify.
//  source: chatpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode(
    'CgdDaGFubmVsEg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use chatMessageRequestDescriptor instead')
const ChatMessageRequest$json = {
  '1': 'ChatMessageRequest',
  '2': [
    {'1': 'senderId', '3': 1, '4': 1, '5': 5, '10': 'senderId'},
    {'1': 'receiverId', '3': 2, '4': 1, '5': 5, '10': 'receiverId'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `ChatMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageRequestDescriptor = $convert.base64Decode(
    'ChJDaGF0TWVzc2FnZVJlcXVlc3QSGgoIc2VuZGVySWQYASABKAVSCHNlbmRlcklkEh4KCnJlY2'
    'VpdmVySWQYAiABKAVSCnJlY2VpdmVySWQSGAoHY29udGVudBgDIAEoCVIHY29udGVudA==');

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = {
  '1': 'ChatMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'senderId', '3': 2, '4': 1, '5': 5, '10': 'senderId'},
    {'1': 'receiverId', '3': 3, '4': 1, '5': 5, '10': 'receiverId'},
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    {'1': 'isReceived', '3': 5, '4': 1, '5': 8, '10': 'isReceived'},
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode(
    'CgtDaGF0TWVzc2FnZRIOCgJpZBgBIAEoBVICaWQSGgoIc2VuZGVySWQYAiABKAVSCHNlbmRlck'
    'lkEh4KCnJlY2VpdmVySWQYAyABKAVSCnJlY2VpdmVySWQSGAoHY29udGVudBgEIAEoCVIHY29u'
    'dGVudBIeCgppc1JlY2VpdmVkGAUgASgIUgppc1JlY2VpdmVk');

@$core.Deprecated('Use chatMessageListResponseDescriptor instead')
const ChatMessageListResponse$json = {
  '1': 'ChatMessageListResponse',
  '2': [
    {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.chat.ChatMessage', '10': 'messages'},
  ],
};

/// Descriptor for `ChatMessageListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageListResponseDescriptor = $convert.base64Decode(
    'ChdDaGF0TWVzc2FnZUxpc3RSZXNwb25zZRItCghtZXNzYWdlcxgBIAMoCzIRLmNoYXQuQ2hhdE'
    '1lc3NhZ2VSCG1lc3NhZ2Vz');

