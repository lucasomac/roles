import 'package:cloud_firestore/cloud_firestore.dart';

class Role {
  late String address;
  late String biography;
  late GeoPoint location;
  late String name;
  late String profileImage;
  late String acronym;
  late String site;
  late String ticket;
  late bool wasVisited;

  Role(this.address, this.biography, this.location, this.name,
      this.profileImage, this.acronym, this.site, this.ticket, this.wasVisited);

  Role.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    biography = json['biography'];
    location = GeoPoint(json['location'].latitude, json['location'].longitude);
    name = json['name'];
    profileImage = json['profileImage'];
    acronym = json['acronym'];
    site = json['site'];
    ticket = json['ticket'];
    wasVisited = json['wasVisited'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['biography'] = biography;
    data['location'] = {
      "latitude": location.latitude,
      "longitude": location.longitude
    };
    data['name'] = name;
    data['profileImage'] = profileImage;
    data['acronym'] = acronym;
    data['site'] = site;
    data['ticket'] = ticket;
    data['wasVisited'] = wasVisited;
    return data;
  }
}
