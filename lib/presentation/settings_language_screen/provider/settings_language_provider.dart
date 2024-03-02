import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/settings_language_model.dart';

/// A provider class for the SettingsLanguageScreen.
///
/// This provider manages the state of the SettingsLanguageScreen, including the
/// current settingsLanguageModelObj
class SettingsLanguageProvider extends ChangeNotifier {
  SettingsLanguageModel settingsLanguageModelObj = SettingsLanguageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
