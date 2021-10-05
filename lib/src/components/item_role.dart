import 'package:flutter/material.dart';
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
              )),
          Text(
            _role.name,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _role.biography,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  fontSize: 16, letterSpacing: 2, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
