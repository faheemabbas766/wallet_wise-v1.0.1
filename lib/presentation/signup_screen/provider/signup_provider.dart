import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../utils/firebase_db.dart';
import '../models/signup_model.dart';

/// A provider class for the SignupScreen.
///
/// This provider manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController threeController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String docId = '';

  SignupModel signupModelObj = SignupModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    threeController.dispose();
    countryController.dispose();
    cityController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void signup() async {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String contact = threeController.text;
    String country = countryController.text;
    String city = cityController.text;

    // Add the user and get the document ID
    docId =
        await Database().addUser(name, email, password, contact, country, city);
    print(docId + " User Added");

    // Clear the text fields after signup
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    threeController.clear();
    countryController.clear();
    cityController.clear();
  }
}
