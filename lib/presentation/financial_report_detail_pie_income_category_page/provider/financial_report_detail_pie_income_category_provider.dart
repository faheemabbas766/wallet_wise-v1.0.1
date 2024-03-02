import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/financial_report_detail_pie_income_category_model.dart';

/// A provider class for the FinancialReportDetailPieIncomeCategoryPage.
///
/// This provider manages the state of the FinancialReportDetailPieIncomeCategoryPage, including the
/// current financialReportDetailPieIncomeCategoryModelObj
class FinancialReportDetailPieIncomeCategoryProvider extends ChangeNotifier {
  FinancialReportDetailPieIncomeCategoryModel
      financialReportDetailPieIncomeCategoryModelObj =
      FinancialReportDetailPieIncomeCategoryModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in financialReportDetailPieIncomeCategoryModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
