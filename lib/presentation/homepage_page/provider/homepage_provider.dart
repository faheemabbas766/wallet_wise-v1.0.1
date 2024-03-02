import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/homepage_model.dart';
import '../models/ninetyfive_item_model.dart';
import '../models/eightyone_item_model.dart';

/// A provider class for the HomepagePage.
///
/// This provider manages the state of the HomepagePage, including the
/// current homepageModelObj
class HomepageProvider extends ChangeNotifier {
  HomepageModel homepageModelObj = HomepageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
