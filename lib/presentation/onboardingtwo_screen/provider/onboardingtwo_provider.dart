import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/onboardingtwo_model.dart';
import '../models/seamlesstransfers_item_model.dart';

/// A provider class for the OnboardingtwoScreen.
///
/// This provider manages the state of the OnboardingtwoScreen, including the
/// current onboardingtwoModelObj
class OnboardingtwoProvider extends ChangeNotifier {
  OnboardingtwoModel onboardingtwoModelObj = OnboardingtwoModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
