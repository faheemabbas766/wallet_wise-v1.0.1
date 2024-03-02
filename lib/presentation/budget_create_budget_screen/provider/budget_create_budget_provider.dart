import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/budget_create_budget_model.dart';

/// A provider class for the BudgetCreateBudgetScreen.
///
/// This provider manages the state of the BudgetCreateBudgetScreen, including the
/// current budgetCreateBudgetModelObj
class BudgetCreateBudgetProvider extends ChangeNotifier {
  BudgetCreateBudgetModel budgetCreateBudgetModelObj =
      BudgetCreateBudgetModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in budgetCreateBudgetModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
