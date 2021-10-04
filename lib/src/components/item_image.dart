import 'package:flutter/material.dart';
import 'package:roles/src/model/role.dart';

class ItemImage extends StatelessWidget {
  final Role _role;

  const ItemImage(this._role, {Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            _role.profileImage,
            semanticLabel: "Lucas",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
