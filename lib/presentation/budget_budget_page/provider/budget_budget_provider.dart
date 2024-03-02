import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/budget_budget_model.dart';

/// A provider class for the BudgetBudgetPage.
///
/// This provider manages the state of the BudgetBudgetPage, including the
/// current budgetBudgetModelObj
class BudgetBudgetProvider extends ChangeNotifier {
  BudgetBudgetModel budgetBudgetModelObj = BudgetBudgetModel();

  @override
  void dispose() {
    super.dispose();
  }
}
