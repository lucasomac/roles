import 'package:flutter/material.dart';
import 'package:roles/src/database/firestore.dart';
import 'package:roles/src/model/role.dart';
import 'package:roles/src/components/item_image.dart';

class ListRoles extends StatelessWidget {
  const ListRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Roles",
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.redAccent,
        appBarTheme: const AppBarTheme(color: Colors.redAccent),
        // Define the default font family.
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Roles"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: getAllRoles().map((Role role) {
            return ItemImage(role);
          }).toList(),
        ),
      ),
    );
  }
}
