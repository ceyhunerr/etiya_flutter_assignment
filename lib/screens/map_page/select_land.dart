import 'package:etiya_flutter_assignment/product/constants/app_colors.dart';
import 'package:etiya_flutter_assignment/product/constants/base.dart';
import 'package:etiya_flutter_assignment/product/constants/styles.dart';
import 'package:etiya_flutter_assignment/product/widgets/map_widgets.dart';
import 'package:etiya_flutter_assignment/screens/homePage/viewModel/cityCubit.dart';
import 'package:etiya_flutter_assignment/screens/homePage/viewModel/cityState.dart';
import 'package:etiya_flutter_assignment/screens/map_page/view_model/mapCubit.dart';
import 'package:etiya_flutter_assignment/screens/map_page/view_model/mapState.dart';
import 'package:etiya_flutter_assignment/screens/map_page/views/mapPageView.dart';
import 'package:etiya_flutter_assignment/src/generated/city.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class SelectLand extends StatefulWidget {
  City city;

  SelectLand({super.key, required this.city});

  @override
  State<SelectLand> createState() =>
      _SelectLandState();
}

class _SelectLandState extends State<SelectLand> {


  @override
  void initState() {
    // TODO: implement initState
    /// show snackbar after the 1 second
    Future.delayed(const Duration(seconds: 1), () {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: navy,
        content: Text("Select your land by tapping on the map. We will calculate the price for you.",style: TextStyle(color: Colors.white),),
      ));
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BlocConsumer<MapCubit, MapState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is MapComplete) {
                return MapPageView(
                  size: size,
                  city: widget.city,
                  polygons: state.polygons,
                  markers: state.markers,
                );
              }
              if (state is MapInitial) {
                return MapPageView(
                  size: size,
                  city: widget.city,
                  polygons: [],
                  markers: [],
                );
              }
              if (state is LoadingInitial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return MapPageView(
                size: size,
                city: widget.city,
                polygons: [],
                markers: [],
              );;
            }));
  }
}
