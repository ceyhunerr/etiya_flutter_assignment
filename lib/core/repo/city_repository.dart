

import 'package:etiya_flutter_assignment/core/init/locator.dart';
import 'package:etiya_flutter_assignment/core/services/city_client.dart';
import 'package:etiya_flutter_assignment/src/generated/city.pbgrpc.dart';

class CityRepository {

  Future<List<City>> getCities() async {
    final cityList = await locator<CityClient>().getCities();
    return cityList.cities;
  }
}
