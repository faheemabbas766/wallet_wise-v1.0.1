import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/budget_detail_budget_model.dart';

/// A provider class for the BudgetDetailBudgetScreen.
///
/// This provider manages the state of the BudgetDetailBudgetScreen, including the
/// current budgetDetailBudgetModelObj
class BudgetDetailBudgetProvider extends ChangeNotifier {
  BudgetDetailBudgetModel budgetDetailBudgetModelObj =
      BudgetDetailBudgetModel();

  @override
  void dispose() {
    super.dispose();
  }
}
