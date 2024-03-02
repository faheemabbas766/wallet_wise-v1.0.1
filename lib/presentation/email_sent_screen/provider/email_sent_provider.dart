import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/email_sent_model.dart';

/// A provider class for the EmailSentScreen.
///
/// This provider manages the state of the EmailSentScreen, including the
/// current emailSentModelObj
class EmailSentProvider extends ChangeNotifier {
  EmailSentModel emailSentModelObj = EmailSentModel();

  @override
  void dispose() {
    super.dispose();
  }
}
