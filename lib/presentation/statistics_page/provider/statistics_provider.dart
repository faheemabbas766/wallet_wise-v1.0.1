import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/statistics_model.dart';
import '../models/statistics_item_model.dart';

/// A provider class for the StatisticsPage.
///
/// This provider manages the state of the StatisticsPage, including the
/// current statisticsModelObj
class StatisticsProvider extends ChangeNotifier {
  StatisticsModel statisticsModelObj = StatisticsModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in statisticsModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
