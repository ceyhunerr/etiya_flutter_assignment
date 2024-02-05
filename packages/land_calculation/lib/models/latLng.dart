class LatLng {

  final double latitude;
  final double longitude;


  LatLng.fromJson(Map<String, dynamic> json)
      : latitude = json['coordinates'][1],
        longitude = json['coordinates'][0];

  Map<String, dynamic> toJson() => {
    'coordinates': [longitude, latitude]
  };

}