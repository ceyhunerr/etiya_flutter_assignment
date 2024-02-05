//
//  Generated code. Do not modify.
//  source: city.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use cityDescriptor instead')
const City$json = {
  '1': 'City',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'latitude', '3': 2, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 3, '4': 1, '5': 1, '10': 'longitude'},
    {'1': 'land_price', '3': 4, '4': 1, '5': 1, '10': 'landPrice'},
  ],
};

/// Descriptor for `City`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cityDescriptor = $convert.base64Decode(
    'CgRDaXR5EhIKBG5hbWUYASABKAlSBG5hbWUSGgoIbGF0aXR1ZGUYAiABKAFSCGxhdGl0dWRlEh'
    'wKCWxvbmdpdHVkZRgDIAEoAVIJbG9uZ2l0dWRlEh0KCmxhbmRfcHJpY2UYBCABKAFSCWxhbmRQ'
    'cmljZQ==');

@$core.Deprecated('Use cityListDescriptor instead')
const CityList$json = {
  '1': 'CityList',
  '2': [
    {'1': 'cities', '3': 1, '4': 3, '5': 11, '6': '.city.City', '10': 'cities'},
  ],
};

/// Descriptor for `CityList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cityListDescriptor = $convert.base64Decode(
    'CghDaXR5TGlzdBIiCgZjaXRpZXMYASADKAsyCi5jaXR5LkNpdHlSBmNpdGllcw==');

