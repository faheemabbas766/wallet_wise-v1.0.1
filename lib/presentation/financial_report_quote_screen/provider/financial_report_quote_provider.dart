import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/financial_report_quote_model.dart';

/// A provider class for the FinancialReportQuoteScreen.
///
/// This provider manages the state of the FinancialReportQuoteScreen, including the
/// current financialReportQuoteModelObj
class FinancialReportQuoteProvider extends ChangeNotifier {
  FinancialReportQuoteModel financialReportQuoteModelObj =
      FinancialReportQuoteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
