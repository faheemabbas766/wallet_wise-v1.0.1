import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/financial_report_detail_pie_income_category_tab_container_model.dart';

/// A provider class for the FinancialReportDetailPieIncomeCategoryTabContainerScreen.
///
/// This provider manages the state of the FinancialReportDetailPieIncomeCategoryTabContainerScreen, including the
/// current financialReportDetailPieIncomeCategoryTabContainerModelObj
class FinancialReportDetailPieIncomeCategoryTabContainerProvider
    extends ChangeNotifier {
  FinancialReportDetailPieIncomeCategoryTabContainerModel
      financialReportDetailPieIncomeCategoryTabContainerModelObj =
      FinancialReportDetailPieIncomeCategoryTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in financialReportDetailPieIncomeCategoryTabContainerModelObj
            .dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
