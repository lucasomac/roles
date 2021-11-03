import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:roles/src/components/action_item.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:roles/src/util/constants.dart';

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
          launch(_urlSite, forceWebView: false);
        }),
        ActionItem(Icons.gps_fixed_outlined, 'ROUTE', () async {
          await redirectToMaps(_location);
        }),
        ActionItem(Icons.airplane_ticket_outlined, 'TICKET', () async {
          await launch(_urlTicket, forceWebView: false);
        }),
      ],
    );
  }
}

redirectToUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false);
  } else {
    throw 'Could not launch $url';
  }
}

redirectToMaps(GeoPoint location) async {
  var urlMap = 'https://google.com/maps/@$location.latitude,$location.longitude';
  if (await canLaunch(urlMap)) {
    await launch(urlMap);
  } else {
    throw 'Could not launch Maps';
  }
}
