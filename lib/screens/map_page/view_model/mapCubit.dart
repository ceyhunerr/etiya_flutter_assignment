import 'package:land_measurement/product/widgets/map_widgets.dart';
import 'package:land_measurement/screens/map_page/view_model/mapState.dart';
import 'package:land_measurement/src/generated/city.pb.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(const MapInitial());

  List<Marker> markers=[];
  List<Polygon> polygons=[];
  List<LatLng> polyLine=[];

  Future<void> addPolygonAndMarker(LatLng point,Marker marker) async
  {
    polyLine.add(point);
    polygons = [MapWidget().polygon(polyLine)];
    markers.add(marker);
    emit(MapComplete(polygons,markers));

  }


  void clearPolygonsAndMarkers()
  {
    polyLine=[];
    polygons=[];
    markers=[];
    emit(const MapInitial());
  }



}


abstract class SplashState {
  const SplashState();
}