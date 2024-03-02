import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_customer_support_model.dart';

/// A provider class for the ProfileCustomerSupportScreen.
///
/// This provider manages the state of the ProfileCustomerSupportScreen, including the
/// current profileCustomerSupportModelObj
class ProfileCustomerSupportProvider extends ChangeNotifier {
  ProfileCustomerSupportModel profileCustomerSupportModelObj =
      ProfileCustomerSupportModel();

  @override
  void dispose() {
    super.dispose();
  }
}
