import 'package:flutter/material.dart';
import 'package:roles/src/model/role.dart';

class ItemMiniature extends StatelessWidget {
  final Role _role;

  const ItemMiniature(this._role, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            _role.profileImage,
            fit: BoxFit.fill,
            semanticLabel: _role.sigla,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
