import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../utils/firebase_db.dart';
import '../models/login_model.dart';

/// A provider class for the LoginScreen.
///
/// This provider manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginModel loginModelObj = LoginModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void login(BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;

    // Call your login method from the Database class
    String isAuthenticated = await Database().login(email, password);

    if (isAuthenticated.isNotEmpty) {
      Navigator.pushNamed(context, AppRoutes.homepageContainerScreen);
      emailController.clear();
      passwordController.clear();
    }
  }
}
