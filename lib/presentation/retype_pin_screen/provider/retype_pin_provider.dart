import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/retype_pin_model.dart';
import '../models/retypepin_item_model.dart';

/// A provider class for the RetypePinScreen.
///
/// This provider manages the state of the RetypePinScreen, including the
/// current retypePinModelObj
class RetypePinProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  RetypePinModel retypePinModelObj = RetypePinModel();

  @override
  void dispose() {
    super.dispose();
  }
}
