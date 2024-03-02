import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/homepage_two_model.dart';
import '../models/homepagetwo_item_model.dart';

/// A provider class for the HomepageTwoScreen.
///
/// This provider manages the state of the HomepageTwoScreen, including the
/// current homepageTwoModelObj
class HomepageTwoProvider extends ChangeNotifier {
  HomepageTwoModel homepageTwoModelObj = HomepageTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
