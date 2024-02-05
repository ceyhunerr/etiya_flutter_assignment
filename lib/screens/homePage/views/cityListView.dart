import 'package:card_button/card_button.dart';
import 'package:etiya_flutter_assignment/product/constants/app_colors.dart';
import 'package:etiya_flutter_assignment/product/constants/styles.dart';
import 'package:etiya_flutter_assignment/screens/map_page/select_land.dart';
import 'package:etiya_flutter_assignment/screens/map_page/view_model/mapCubit.dart';
import 'package:etiya_flutter_assignment/src/generated/city.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

class CityListView extends StatelessWidget {
  /// List of cities
  final List<City> cities;

  const CityListView(this.cities, {super.key});

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: cities.length,
      padding: EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.025),
      itemBuilder: (context, index) {
        final city = cities[index];
        return CardButton.button(title: city.name, buttonColor: Theme.of(context).cardColor,style: Styles().buttonTextStyle(size, textColor),size: size, fonk: (){
          /// clear polygon and markers
          context.read<MapCubit>().clearPolygonsAndMarkers();
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>SelectLand(city: city)));

        }
        );
      },
    );
  }
}
