import 'package:etiya_flutter_assignment/src/generated/city.pb.dart';
import 'package:flutter_map/flutter_map.dart';

abstract class MapState {
  const MapState();
}

class MapInitial extends MapState {
  const MapInitial();
}

class LoadingInitial extends MapState {
  const LoadingInitial();
}

class MapComplete extends MapState {
  final List<Polygon> polygons;
  final List<Marker> markers;
  MapComplete( this.polygons, this.markers);
}


class MapError extends MapState {
  final String errorMessage;
  MapError(this.errorMessage);
}