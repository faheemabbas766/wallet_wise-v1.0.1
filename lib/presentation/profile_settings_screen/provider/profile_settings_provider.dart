import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/profile_settings_model.dart';/// A provider class for the ProfileSettingsScreen.
///
/// This provider manages the state of the ProfileSettingsScreen, including the
/// current profileSettingsModelObj

// ignore_for_file: must_be_immutable
class ProfileSettingsProvider extends ChangeNotifier {ProfileSettingsModel profileSettingsModelObj = ProfileSettingsModel();

@override void dispose() { super.dispose(); } 
 }
