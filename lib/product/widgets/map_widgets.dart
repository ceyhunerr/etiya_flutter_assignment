import 'package:etiya_flutter_assignment/product/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget{

  Marker marker (LatLng point)=> Marker(
      width: 20.0,
      height: 20.0,
      point: point,
      child: const Icon(
        Icons.circle,
        color: orange,
        size: 20.0,
      )
  );

  polygon(List<LatLng> polyLine) =>Polygon(
      borderStrokeWidth: 2,
      isFilled: true,
      isDotted: true,
      points: polyLine, color: orange.withOpacity(0.7), borderColor: orange);
}




