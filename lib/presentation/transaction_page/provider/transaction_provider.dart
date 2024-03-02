import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/transaction_model.dart';
import '../models/transaction_item_model.dart';

/// A provider class for the TransactionPage.
///
/// This provider manages the state of the TransactionPage, including the
/// current transactionModelObj
class TransactionProvider extends ChangeNotifier {
  TransactionModel transactionModelObj = TransactionModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in transactionModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
