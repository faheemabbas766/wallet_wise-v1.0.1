import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/budget_create_budget_one_model.dart';

/// A provider class for the BudgetCreateBudgetOneScreen.
///
/// This provider manages the state of the BudgetCreateBudgetOneScreen, including the
/// current budgetCreateBudgetOneModelObj
class BudgetCreateBudgetOneProvider extends ChangeNotifier {
  BudgetCreateBudgetOneModel budgetCreateBudgetOneModelObj =
      BudgetCreateBudgetOneModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in budgetCreateBudgetOneModelObj.dropdownItemList) {
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
