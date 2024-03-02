import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/splashscreen_model.dart';

/// A provider class for the SplashscreenScreen.
///
/// This provider manages the state of the SplashscreenScreen, including the
/// current splashscreenModelObj
class SplashscreenProvider extends ChangeNotifier {
  SplashscreenModel splashscreenModelObj = SplashscreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
