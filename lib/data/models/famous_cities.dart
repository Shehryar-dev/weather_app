class FamousCities{
  final String name;
  final double lat;
  final double lon;

  FamousCities({required this.name, required this.lat, required this.lon});

}



List<FamousCities> famousCities = [
  FamousCities(name: 'Tokyo', lat: 35.6833, lon: 139.7667),
   FamousCities(name: 'New Delhi', lat: 28.5833, lon: 77.2),
   FamousCities(name: 'Paris', lat: 48.85, lon: 2.3333),
   FamousCities(name: 'London', lat: 51.4833, lon: -0.0833),
   FamousCities(name: 'New York', lat: 40.7167, lon: -74.0167),
   FamousCities(name: 'Tehran', lat: 35.6833, lon: 51.4167),
];
