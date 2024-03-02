import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/settings_notification_model.dart';

/// A provider class for the SettingsNotificationScreen.
///
/// This provider manages the state of the SettingsNotificationScreen, including the
/// current settingsNotificationModelObj
class SettingsNotificationProvider extends ChangeNotifier {
  SettingsNotificationModel settingsNotificationModelObj =
      SettingsNotificationModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeSwitchBox2(bool value) {
    isSelectedSwitch1 = value;
    notifyListeners();
  }

  void changeSwitchBox3(bool value) {
    isSelectedSwitch2 = value;
    notifyListeners();
  }
}
