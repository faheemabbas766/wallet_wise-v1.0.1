import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/pin_model.dart';
import '../models/pin_item_model.dart';

/// A provider class for the PinScreen.
///
/// This provider manages the state of the PinScreen, including the
/// current pinModelObj
class PinProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  PinModel pinModelObj = PinModel();

  @override
  void dispose() {
    super.dispose();
  }
}
