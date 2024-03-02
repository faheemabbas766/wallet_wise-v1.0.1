import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/reset_password_model.dart';

/// A provider class for the ResetPasswordScreen.
///
/// This provider manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordProvider extends ChangeNotifier {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  ResetPasswordModel resetPasswordModelObj = ResetPasswordModel();

  bool isShowPassword = true;

  @override
  void dispose() {
    super.dispose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
