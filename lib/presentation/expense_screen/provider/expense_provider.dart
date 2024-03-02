import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/expense_model.dart';

/// A provider class for the ExpenseScreen.
///
/// This provider manages the state of the ExpenseScreen, including the
/// current expenseModelObj
class ExpenseProvider extends ChangeNotifier {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  ExpenseModel expenseModelObj = ExpenseModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
    inputFieldController.dispose();
    locationController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in expenseModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
