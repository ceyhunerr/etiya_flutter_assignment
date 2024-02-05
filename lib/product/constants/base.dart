class Base {
  static const String url = 'localhost';
  static const String urlMapTemplate = 'https://api.mapbox.com/styles/v1/ceyhuner/clapirymi000x14p0d8vnt55k/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiY2V5aHVuZXIiLCJhIjoiY2xhcGk5cG84MGM4bTNycWVqZHB1ZWRtYyJ9.8ODX5R3UA6SZOpQi2w1Vww';
  static const String accessToken = 'pk.eyJ1IjoiY2V5aHVuZXIiLCJhIjoiY2xhcGk5cG84MGM4bTNycWVqZHB1ZWRtYyJ9.8ODX5R3UA6SZOpQi2w1Vww';
  static const String id = 'mapbox://styles/ceyhuner/clapirymi000x14p0d8vnt55k';
  static const int port=50051;


  static const Map<String, String> additionalOptions= {
    "accessToken":accessToken,
    "id":id,
  };


}