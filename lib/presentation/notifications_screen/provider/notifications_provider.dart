import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/notifications_model.dart';
import '../models/notifications_item_model.dart';

/// A provider class for the NotificationsScreen.
///
/// This provider manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsProvider extends ChangeNotifier {
  NotificationsModel notificationsModelObj = NotificationsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
