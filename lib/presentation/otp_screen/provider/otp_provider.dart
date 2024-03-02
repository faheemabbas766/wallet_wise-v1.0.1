import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/otp_model.dart';

/// A provider class for the OtpScreen.
///
/// This provider manages the state of the OtpScreen, including the
/// current otpModelObj
class OtpProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpModel otpModelObj = OtpModel();

  @override
  void dispose() {
    super.dispose();
  }
}
