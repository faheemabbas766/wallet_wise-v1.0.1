import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/budget_edit_budget_model.dart';

/// A provider class for the BudgetEditBudgetScreen.
///
/// This provider manages the state of the BudgetEditBudgetScreen, including the
/// current budgetEditBudgetModelObj
class BudgetEditBudgetProvider extends ChangeNotifier {
  BudgetEditBudgetModel budgetEditBudgetModelObj = BudgetEditBudgetModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in budgetEditBudgetModelObj.dropdownItemList) {
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
