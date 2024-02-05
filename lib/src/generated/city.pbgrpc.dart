//
//  Generated code. Do not modify.
//  source: city.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'city.pb.dart' as $0;

export 'city.pb.dart';

@$pb.GrpcServiceName('city.CityService')
class CityServiceClient extends $grpc.Client {
  static final _$getCities = $grpc.ClientMethod<$0.Empty, $0.CityList>(
      '/city.CityService/GetCities',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CityList.fromBuffer(value));

  CityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CityList> getCities($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCities, request, options: options);
  }
}

@$pb.GrpcServiceName('city.CityService')
abstract class CityServiceBase extends $grpc.Service {
  $core.String get $name => 'city.CityService';

  CityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.CityList>(
        'GetCities',
        getCities_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.CityList value) => value.writeToBuffer()));
  }

  $async.Future<$0.CityList> getCities_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCities(call, await request);
  }

  $async.Future<$0.CityList> getCities($grpc.ServiceCall call, $0.Empty request);
}
