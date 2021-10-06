import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:roles/src/components/item_role.dart';
import 'package:roles/src/database/firestore.dart';
import 'package:roles/src/model/role.dart';
import 'package:roles/src/components/item_miniature.dart';

class ListRoles extends StatelessWidget {
  const ListRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Roles"),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: getAllRoles(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: LinearProgressIndicator(),
              );
            }
            return GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(8.0),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Role data =
                    Role.fromJson(document.data()! as Map<String, dynamic>);
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ItemRole(data))),
                  child: ItemMiniature(data),
                );
              }).toList(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        elevation: 16,
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
