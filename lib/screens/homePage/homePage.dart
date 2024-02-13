import 'package:land_measurement/core/init/locator.dart';
import 'package:land_measurement/product/constants/app_colors.dart';
import 'package:land_measurement/product/widgets/appBars.dart';
import 'package:land_measurement/screens/homePage/viewModel/cityCubit.dart';
import 'package:land_measurement/screens/homePage/viewModel/cityState.dart';
import 'package:land_measurement/screens/homePage/views/cityListView.dart';
import 'package:land_measurement/src/generated/city.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CityCubit>().getCities();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BlocConsumer<CityCubit, CityState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is CityInitial) {
                // ignore: prefer_const_constructors
                return Center(child: CircularProgressIndicator());
              }
              if (state is CityLoading) {
                // ignore: prefer_const_constructors
                return Center(child: CircularProgressIndicator());
              }
              if (state is CityCompleted) {
                List<City> city = state.cities;
                return Scaffold(
                  appBar: AppBars.appBar("Cities", size, Colors.white),
                  backgroundColor: Theme.of(context).colorScheme.background,
                  body: CityListView(city),
                );
              }
              if (state is CityError) {
                return Center(
                  child: Text(state.errorMessage.toString()),
                );
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
