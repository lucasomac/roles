import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference roles = FirebaseFirestore.instance.collection('roles');

getAllRoles() {
  return roles.snapshots();
}
