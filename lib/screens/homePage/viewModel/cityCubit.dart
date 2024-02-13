import 'package:land_measurement/core/repo/city_repository.dart';
import 'package:land_measurement/screens/homePage/viewModel/cityState.dart';
import 'package:land_measurement/src/generated/city.pb.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CityCubit extends Cubit<CityState> {
  CityCubit() : super(CityInitial());
  CityRepository? cityRepository ;


  Future<void> getCities() async
  {
    cityRepository = CityRepository();
    emit(const CityLoading());
    List<City> cityList = [];
    try {
       cityList= await cityRepository!.getCities();
          emit(CityCompleted(cityList));
    } catch (e) {
      emit(CityError(e.toString()));
    }
  }



}


abstract class SplashState {
  const SplashState();
}