//
//  Generated code. Do not modify.
//  source: commonpb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Media_Type extends $pb.ProtobufEnum {
  static const Media_Type IMAGE = Media_Type._(0, _omitEnumNames ? '' : 'IMAGE');
  static const Media_Type VIDEO = Media_Type._(1, _omitEnumNames ? '' : 'VIDEO');

  static const $core.List<Media_Type> values = <Media_Type> [
    IMAGE,
    VIDEO,
  ];

  static final $core.Map<$core.int, Media_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Media_Type? valueOf($core.int value) => _byValue[value];

  const Media_Type._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
