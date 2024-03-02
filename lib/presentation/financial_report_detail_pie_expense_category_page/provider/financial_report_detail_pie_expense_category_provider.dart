import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/financial_report_detail_pie_expense_category_model.dart';

/// A provider class for the FinancialReportDetailPieExpenseCategoryPage.
///
/// This provider manages the state of the FinancialReportDetailPieExpenseCategoryPage, including the
/// current financialReportDetailPieExpenseCategoryModelObj
class FinancialReportDetailPieExpenseCategoryProvider extends ChangeNotifier {
  FinancialReportDetailPieExpenseCategoryModel
      financialReportDetailPieExpenseCategoryModelObj =
      FinancialReportDetailPieExpenseCategoryModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in financialReportDetailPieExpenseCategoryModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
