import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/wallet_setup_model.dart';

/// A provider class for the WalletSetupPage.
///
/// This provider manages the state of the WalletSetupPage, including the
/// current walletSetupModelObj
class WalletSetupProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController cVCController = TextEditingController();

  TextEditingController eXPIRATIONMMYYController = TextEditingController();

  TextEditingController zIPController = TextEditingController();

  WalletSetupModel walletSetupModelObj = WalletSetupModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    cVCController.dispose();
    eXPIRATIONMMYYController.dispose();
    zIPController.dispose();
  }
}
