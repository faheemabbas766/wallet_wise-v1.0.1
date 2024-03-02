import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/financial_report_income_model.dart';

/// A provider class for the FinancialReportIncomeScreen.
///
/// This provider manages the state of the FinancialReportIncomeScreen, including the
/// current financialReportIncomeModelObj
class FinancialReportIncomeProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  FinancialReportIncomeModel financialReportIncomeModelObj =
      FinancialReportIncomeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
