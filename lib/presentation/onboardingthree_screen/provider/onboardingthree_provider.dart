import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/onboardingthree_model.dart';
import '../models/planwisely_item_model.dart';

/// A provider class for the OnboardingthreeScreen.
///
/// This provider manages the state of the OnboardingthreeScreen, including the
/// current onboardingthreeModelObj
class OnboardingthreeProvider extends ChangeNotifier {
  OnboardingthreeModel onboardingthreeModelObj = OnboardingthreeModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
