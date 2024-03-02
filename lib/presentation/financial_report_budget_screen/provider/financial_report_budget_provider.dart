import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/financial_report_budget_model.dart';

/// A provider class for the FinancialReportBudgetScreen.
///
/// This provider manages the state of the FinancialReportBudgetScreen, including the
/// current financialReportBudgetModelObj
class FinancialReportBudgetProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  FinancialReportBudgetModel financialReportBudgetModelObj =
      FinancialReportBudgetModel();

  @override
  void dispose() {
    super.dispose();
  }
}
