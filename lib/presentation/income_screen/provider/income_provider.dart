import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/income_model.dart';

/// A provider class for the IncomeScreen.
///
/// This provider manages the state of the IncomeScreen, including the
/// current incomeModelObj
class IncomeProvider extends ChangeNotifier {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  IncomeModel incomeModelObj = IncomeModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
    inputFieldController.dispose();
    locationController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in incomeModelObj.dropdownItemList) {
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
