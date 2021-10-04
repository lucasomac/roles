class Location {
  late int _latitude;
  late int _longitude;

  Location(this._latitude, this._longitude);

  int get latitude => _latitude;

  set latitude(int latitude) => _latitude = latitude;

  int get longitude => _longitude;

  set longitude(int longitude) => _longitude = longitude;

  Location.fromJson(Map<String, dynamic> json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = _latitude;
    data['longitude'] = _longitude;
    return data;
  }

  @override
  String toString() {
    return 'Location{_latitude: $_latitude, _longitude: $_longitude}';
  }
}
