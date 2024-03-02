import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/onboardingone_model.dart';
import '../models/takefullcontrol_item_model.dart';

/// A provider class for the OnboardingoneScreen.
///
/// This provider manages the state of the OnboardingoneScreen, including the
/// current onboardingoneModelObj
class OnboardingoneProvider extends ChangeNotifier {
  OnboardingoneModel onboardingoneModelObj = OnboardingoneModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
