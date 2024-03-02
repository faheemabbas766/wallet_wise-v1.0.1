import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/statistics_tab_container_model.dart';

/// A provider class for the StatisticsTabContainerScreen.
///
/// This provider manages the state of the StatisticsTabContainerScreen, including the
/// current statisticsTabContainerModelObj
class StatisticsTabContainerProvider extends ChangeNotifier {
  StatisticsTabContainerModel statisticsTabContainerModelObj =
      StatisticsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
