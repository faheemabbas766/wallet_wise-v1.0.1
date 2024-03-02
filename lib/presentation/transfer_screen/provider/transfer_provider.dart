import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/transfer_model.dart';

/// A provider class for the TransferScreen.
///
/// This provider manages the state of the TransferScreen, including the
/// current transferModelObj
class TransferProvider extends ChangeNotifier {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldController1 = TextEditingController();

  TextEditingController inputFieldController2 = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TransferModel transferModelObj = TransferModel();

  @override
  void dispose() {
    super.dispose();
    inputFieldController.dispose();
    inputFieldController1.dispose();
    inputFieldController2.dispose();
    locationController.dispose();
  }
}
