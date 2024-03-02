import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/transaction_filter_model.dart';

/// A provider class for the TransactionFilterBottomsheet.
///
/// This provider manages the state of the TransactionFilterBottomsheet, including the
/// current transactionFilterModelObj
class TransactionFilterProvider extends ChangeNotifier {
  TransactionFilterModel transactionFilterModelObj = TransactionFilterModel();

  @override
  void dispose() {
    super.dispose();
  }
}
