import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:roles/src/model/role.dart';

FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: secondaryApp);
CollectionReference roles = FirebaseFirestore.instance.collection('roles');

List<Role> getAllRoles() {
  Firebase.initializeApp(name: "roles");
  List<Role> listRoles = [];
  roles
      .get()
      .then((querySnapshot) => {
            querySnapshot.docs.forEach((result) {
              listRoles
                  .add(Role.fromJson(result.data() as Map<String, dynamic>));
            })
          })
      .catchError((error) => print("Failed to add user: $error"));
  return listRoles;
}
