import 'package:etiya_flutter_assignment/product/constants/base.dart';
import 'package:etiya_flutter_assignment/src/generated/city.pbgrpc.dart';
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
