

import 'package:land_measurement/core/init/locator.dart';
import 'package:land_measurement/core/services/city_client.dart';
import 'package:land_measurement/src/generated/city.pbgrpc.dart';

class CityRepository {

  Future<List<City>> getCities() async {
    final cityList = await locator<CityClient>().getCities();
    return cityList.cities;
  }
}
