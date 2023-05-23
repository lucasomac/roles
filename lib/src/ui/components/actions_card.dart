import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:roles/src/ui/components/action_item.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionsCard extends StatelessWidget {
  final String _urlTicket;
  final String _urlSite;
  final GeoPoint _location;

  const ActionsCard(this._urlTicket, this._urlSite, this._location, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionItem(Icons.web, 'SITE', () async {
          launchUrl(Uri.parse(_urlSite));
        }),
        ActionItem(Icons.gps_fixed_outlined, 'ROUTE', () async {
          await redirectToMaps(_location);
        }),
        ActionItem(Icons.airplane_ticket_outlined, 'TICKET', () async {
          launchUrl(Uri.parse(_urlTicket));
        }),
      ],
    );
  }
}

redirectToUrl(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

redirectToMaps(GeoPoint location) {
  MapsLauncher.launchCoordinates(location.latitude, location.longitude);
}
