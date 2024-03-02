import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/wallet_setup_tab_container_model.dart';

/// A provider class for the WalletSetupTabContainerScreen.
///
/// This provider manages the state of the WalletSetupTabContainerScreen, including the
/// current walletSetupTabContainerModelObj
class WalletSetupTabContainerProvider extends ChangeNotifier {
  WalletSetupTabContainerModel walletSetupTabContainerModelObj =
      WalletSetupTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
