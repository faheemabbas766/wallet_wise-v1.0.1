import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/settings_security_model.dart';

/// A provider class for the SettingsSecurityScreen.
///
/// This provider manages the state of the SettingsSecurityScreen, including the
/// current settingsSecurityModelObj
class SettingsSecurityProvider extends ChangeNotifier {
  SettingsSecurityModel settingsSecurityModelObj = SettingsSecurityModel();

  @override
  void dispose() {
    super.dispose();
  }
}
