import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/financial_report_expense_model.dart';

/// A provider class for the FinancialReportExpenseScreen.
///
/// This provider manages the state of the FinancialReportExpenseScreen, including the
/// current financialReportExpenseModelObj
class FinancialReportExpenseProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  FinancialReportExpenseModel financialReportExpenseModelObj =
      FinancialReportExpenseModel();

  @override
  void dispose() {
    super.dispose();
  }
}
