import 'package:cloud_firestore/cloud_firestore.dart';

class Role {
  late GeoPoint _location;
  late String _name;
  late String _profileImage;
  late String _sigla;
  late String _site;
  late bool _wasVisited;

  Role(this._location, this._name, this._profileImage, this._sigla, this._site,
      this._wasVisited);

  GeoPoint get location {
    return _location;
  }

  set location(GeoPoint location) => _location = location;

  String get name => _name;

  set name(String name) => _name = name;

  String get profileImage => _profileImage;

  set profileImage(String profileImage) => _profileImage = profileImage;

  String get sigla => _sigla;

  set sigla(String sigla) => _sigla = sigla;

  String get site => _site;

  set site(String site) => _site = site;

  bool get wasVisited => _wasVisited;

  set wasVisited(bool wasVisited) => _wasVisited = wasVisited;

  Role.fromJson(Map<String, dynamic> json) {
    _location = GeoPoint(json['location'].latitude, json['location'].longitude);
    _name = json['name'];
    _profileImage = json['profileImage'];
    _sigla = json['sigla'];
    _site = json['site'];
    _wasVisited = json['wasVisited'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['location'] = {
      "latitude": _location.latitude,
      "longitude": _location.longitude
    };
    data['name'] = _name;
    data['profileImage'] = _profileImage;
    data['sigla'] = _sigla;
    data['site'] = _site;
    data['wasVisited'] = _wasVisited;
    return data;
  }
}
