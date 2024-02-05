library land_calculation;

import 'package:latlong2/latlong.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.

  double calculateArea(List<LatLng> points) {
    if (points.length < 3) {
      return 0.0;
    }

    double area = 0;
    int j = points.length - 1;

    for (int i = 0; i < points.length; i++) {
      final p1 = points[i];
      final p2 = points[j];
      area += (p2.longitude + p1.longitude) * (p2.latitude - p1.latitude);
      j = i;
    }

    return (area.abs() / 2.0) * 111319.9 * 111319.9;
  }

}
