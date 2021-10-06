import 'package:flutter/material.dart';
import 'package:roles/src/components/actions_card.dart';
import 'package:roles/src/components/title_card.dart';
import 'package:roles/src/model/role.dart';

class ItemRole extends StatelessWidget {
  final Role _role;

  const ItemRole(this._role, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_role.sigla),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            child: Image.network(
              _role.profileImage,
              fit: BoxFit.fitHeight,
            ),
          ),
          TitleCard(_role.name),
          const ActionsCard(),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              _role.biography,
              textAlign: TextAlign.justify,
              softWrap: true,
              style: const TextStyle(
                  fontSize: 14, letterSpacing: 2, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
