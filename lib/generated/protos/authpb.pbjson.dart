//
//  Generated code. Do not modify.
//  source: authpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGA'
    'IgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'lastName', '3': 6, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'districtId', '3': 7, '4': 1, '5': 5, '10': 'districtId'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHVzZXJuYW1lGAIgAS'
    'gJUgh1c2VybmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQSEgoEbmFtZRgFIAEoCVIE'
    'bmFtZRIaCghsYXN0TmFtZRgGIAEoCVIIbGFzdE5hbWUSHgoKZGlzdHJpY3RJZBgHIAEoBVIKZG'
    'lzdHJpY3RJZA==');

@$core.Deprecated('Use refreshTokenRequestDescriptor instead')
const RefreshTokenRequest$json = {
  '1': 'RefreshTokenRequest',
  '2': [
    {'1': 'refreshToken', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenRequestDescriptor = $convert.base64Decode(
    'ChNSZWZyZXNoVG9rZW5SZXF1ZXN0EiIKDHJlZnJlc2hUb2tlbhgBIAEoCVIMcmVmcmVzaFRva2'
    'Vu');

@$core.Deprecated('Use sendOtpRequestDescriptor instead')
const SendOtpRequest$json = {
  '1': 'SendOtpRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `SendOtpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendOtpRequestDescriptor = $convert.base64Decode(
    'Cg5TZW5kT3RwUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWU=');

@$core.Deprecated('Use resetPasswordWithOtpRequestDescriptor instead')
const ResetPasswordWithOtpRequest$json = {
  '1': 'ResetPasswordWithOtpRequest',
  '2': [
    {'1': 'otp', '3': 1, '4': 1, '5': 9, '10': 'otp'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'passwordValidate', '3': 3, '4': 1, '5': 9, '10': 'passwordValidate'},
  ],
};

/// Descriptor for `ResetPasswordWithOtpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetPasswordWithOtpRequestDescriptor = $convert.base64Decode(
    'ChtSZXNldFBhc3N3b3JkV2l0aE90cFJlcXVlc3QSEAoDb3RwGAEgASgJUgNvdHASGgoIcGFzc3'
    'dvcmQYAiABKAlSCHBhc3N3b3JkEioKEHBhc3N3b3JkVmFsaWRhdGUYAyABKAlSEHBhc3N3b3Jk'
    'VmFsaWRhdGU=');

@$core.Deprecated('Use credentialsDescriptor instead')
const Credentials$json = {
  '1': 'Credentials',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `Credentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List credentialsDescriptor = $convert.base64Decode(
    'CgtDcmVkZW50aWFscxIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SIgoMcmVmcmVzaFRva2VuGAIgAS'
    'gJUgxyZWZyZXNoVG9rZW4=');

