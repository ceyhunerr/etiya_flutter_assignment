
import 'package:etiya_flutter_assignment/product/constants/base.dart';
import 'package:etiya_flutter_assignment/src/generated/city.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class CityService extends CityServiceBase {
  @override
  Future<CityList> getCities(ServiceCall call, Empty request) async {
    /// GENERATED FAKE DATA
    return CityList()
      ..cities.addAll([
        City()
          ..name = 'Ankara'
          ..latitude = 39.9334
          ..longitude = 32.8597
          ..landPrice = 5000,
        City()
          ..name = 'İstanbul'
          ..latitude = 41.0082
          ..longitude = 28.9784
          ..landPrice = 10000,
        City()
          ..name = 'İzmir'
          ..latitude = 38.4237
          ..longitude = 27.1428
          ..landPrice = 7000.0,
        City()
          ..name = 'Bolu'
          ..latitude = 40.7395
          ..longitude = 31.6116
          ..landPrice = 3000,
      ]);
  }
}

Future<void> main(List<String> args) async {
  /// CONNECT TO SERVER
  final server = Server([CityService()]);
  await server.serve(port: Base.port);
  print('Server listening on port ${server.port}...');
}