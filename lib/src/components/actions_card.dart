import 'package:flutter/material.dart';
import 'package:roles/src/components/action_item.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ActionItem(Icons.call, 'CALL'),
        ActionItem(Icons.near_me, 'ROUTE'),
        ActionItem(Icons.share, 'SHARE'),
      ],
    );
    ;
  }
}
