import 'package:land_measurement/product/constants/app_colors.dart';
import 'package:land_measurement/src/generated/city.pb.dart';
import 'package:get_it/get_it.dart';
import 'package:land_calculation/land_calculation.dart';
import 'package:land_measurement/product/constants/base.dart';
import 'package:land_measurement/product/widgets/buttons.dart';
import 'package:land_measurement/product/widgets/map_widgets.dart';
import 'package:land_measurement/screens/map_page/view_model/mapCubit.dart';
import 'package:land_measurement/screens/map_page/views/completeCalculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPageView extends StatelessWidget {
  /// Size of the screen
  Size size;
  /// The controller for the map
  MapController controller= MapController();
  ///Current location of the city
  /// Current City
  City city;
  /// List of polygons
  List<Polygon> polygons;
  /// List of markers
  List<Marker> markers;
  MapPageView({super.key,required this.size,required this.city, required this.polygons, required this.markers});



  @override
  Widget build(BuildContext context) {
    return  Stack(
      fit: StackFit.expand,
      children: [
        FlutterMap(
          mapController: controller,

          options: MapOptions(
              initialCenter: LatLng(city.latitude, city.longitude),
              initialZoom: 12.0,
              onTap: (possition, point) {
                BlocProvider.of<MapCubit>(context).addPolygonAndMarker(point,MapWidget().marker(point));


              }
          ),
          children: [
            TileLayer(
              urlTemplate: Base.urlMapTemplate,
              additionalOptions: Base.additionalOptions,

              //userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),

            PolygonLayer(polygons: polygons),
            MarkerLayer(markers: markers),
          ],
        ),
        // select button bottom of the screen
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: size.height*0.05),
          height: size.height*0.05,
          width: size.width*0.9,
          child: Buttons().customButton( "Select",context,size,(){
           if(polygons.isNotEmpty){
             if(polygons.first.points.length<3)
             {
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please select at least 3 points"),backgroundColor: navy,));
             }else{
               double totalLand = Calculator().calculateArea(polygons.first.points);
               Navigator.push(context, MaterialPageRoute(builder: (builder)=>CompleteCalculate(totalLand: totalLand,city: city,)));

             }
           }
          }),
        ),

        /// Circle Back Button
        Positioned(
          top: size.height*0.05,
          left: size.width*0.05,
          child: Buttons().backButton( Icon(Icons.arrow_back,color: Theme.of(context).primaryColor,size: size.height*0.025,),context,size,(){
            Navigator.pop(context);
          }),
        )
      ],
    );
  }


}
