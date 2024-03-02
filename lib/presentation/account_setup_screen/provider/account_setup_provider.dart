import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/account_setup_model.dart';

/// A provider class for the AccountSetupScreen.
///
/// This provider manages the state of the AccountSetupScreen, including the
/// current accountSetupModelObj
class AccountSetupProvider extends ChangeNotifier {
  AccountSetupModel accountSetupModelObj = AccountSetupModel();

  @override
  void dispose() {
    super.dispose();
  }
}
