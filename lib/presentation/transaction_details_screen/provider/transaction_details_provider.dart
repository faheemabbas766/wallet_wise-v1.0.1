import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/transaction_details_model.dart';

/// A provider class for the TransactionDetailsScreen.
///
/// This provider manages the state of the TransactionDetailsScreen, including the
/// current transactionDetailsModelObj
class TransactionDetailsProvider extends ChangeNotifier {
  TransactionDetailsModel transactionDetailsModelObj =
      TransactionDetailsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
