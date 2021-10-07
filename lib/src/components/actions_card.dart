import 'package:flutter/material.dart';
import 'package:roles/src/components/action_item.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionItem(Icons.web, 'SITE', () {}),
        ActionItem(Icons.gps_fixed_outlined, 'ROUTE', () {}),
        ActionItem(Icons.airplane_ticket_outlined, 'TICKET', () {}),
      ],
    );
    ;
  }
}
