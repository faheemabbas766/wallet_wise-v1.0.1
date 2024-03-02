import '../../../core/app_export.dart';/// This class is used in the [transaction_item_widget] screen.
class TransactionItemModel {TransactionItemModel({this.yesterday, this.yesterday1, this.id, }) { yesterday = yesterday  ?? "Today";yesterday1 = yesterday1  ?? "Today";id = id  ?? ""; }

String? yesterday;

String? yesterday1;

String? id;

 }
