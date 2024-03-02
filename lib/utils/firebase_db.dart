import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<String> addUser(String name, String email, String password,
      String contact, String country, String city) async {
    CollectionReference user = firestore.collection('Users');

    QuerySnapshot userQuery = await user.where('Email', isEqualTo: email).get();

    try {
      if (userQuery.docs.isEmpty) {
        DocumentReference document = await user.add({
          'Name': name,
          'Email': email,
          'Password': password,
          'Contact': contact,
          "Country": country,
          "City": city,
        });
        return document.id;
      } else {
        print('Email already exists');
        return '';
      }
    } catch (error) {
      print("Failed to add user: $error");
      throw error;
    }
  }

  Future<String> login(String email, String password) async {
    CollectionReference user = firestore.collection('Users');

    QuerySnapshot userQuery = await user.where('Email', isEqualTo: email).get();

    try {
      if (userQuery.docs.isNotEmpty) {
        // Assuming email is unique, there should be only one document
        DocumentSnapshot userData = userQuery.docs.first;
        if (userData.data() == password) {
          return userData.id; // Return the user id if login is successful
        } else {
          print('Invalid password');
          return '';
        }
      } else {
        print('User not found');
        return '';
      }
    } catch (error) {
      print("Failed to login: $error");
      throw error;
    }
  }
}
