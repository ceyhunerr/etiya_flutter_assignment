

import 'package:etiya_flutter_assignment/src/generated/city.pb.dart';

abstract class CityState {
  const CityState();
}

class CityInitial extends CityState {
  CityInitial();
}

class CityLoading extends CityState {
  const CityLoading();
}

class CityCompleted extends CityState {
  final List<City> cities;
  const CityCompleted(this.cities);
}

class CityError extends CityState {
  final String errorMessage;
  const CityError(this.errorMessage);
}

// context.read<SplashCubit>().getSplash();