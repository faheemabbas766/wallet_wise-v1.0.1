import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/settings_currency_model.dart';

/// A provider class for the SettingsCurrencyScreen.
///
/// This provider manages the state of the SettingsCurrencyScreen, including the
/// current settingsCurrencyModelObj
class SettingsCurrencyProvider extends ChangeNotifier {
  SettingsCurrencyModel settingsCurrencyModelObj = SettingsCurrencyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
