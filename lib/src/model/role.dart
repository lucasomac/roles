import 'point.dart';

class Role {
  final Point _location;
  final String _name;
  String _photoImage;
  String _sigla;
  String _site;
  bool _wasVisited;
  final String _local;

  Role(this._location, this._name, this._photoImage, this._sigla, this._site,
      this._wasVisited, this._local);

  String get local => _local;

  bool get wasVisited => _wasVisited;

  set wasVisited(bool value) {
    _wasVisited = value;
  }

  String get site => _site;

  set site(String value) {
    _site = value;
  }

  String get sigla => _sigla;

  set sigla(String value) {
    _sigla = value;
  }

  String get photoImage => _photoImage;

  set photoImage(String value) {
    _photoImage = value;
  }

  String get name => _name;

  Point get location => _location;
}
