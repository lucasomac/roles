class Location {
  late int latitude;
  late int longitude;

  Location(this.latitude, this.longitude);

  Location.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }

  @override
  String toString() {
    return 'Location{_latitude: $latitude, _longitude: $longitude}';
  }
}
