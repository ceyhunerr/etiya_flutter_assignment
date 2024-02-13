import 'package:land_measurement/product/constants/base.dart';
import 'package:land_measurement/src/generated/city.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class CityClient {
  final CityServiceClient cityServiceClient;

  CityClient()
      : cityServiceClient = CityServiceClient(
    ClientChannel(
      Base.url,
      port: Base.port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    ),
  );

  Future<CityList> getCities() async {
    return cityServiceClient.getCities(Empty());
  }
}
