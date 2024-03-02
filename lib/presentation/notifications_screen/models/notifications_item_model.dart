import '../../../core/app_export.dart';/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {NotificationsItemModel({this.youHaveAMessage, this.id, }) { youHaveAMessage = youHaveAMessage  ?? "You have a message from Sarah.";id = id  ?? ""; }

String? youHaveAMessage;

String? id;

 }
