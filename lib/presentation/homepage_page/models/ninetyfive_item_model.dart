import '../../../core/app_export.dart';/// This class is used in the [ninetyfive_item_widget] screen.
class NinetyfiveItemModel {NinetyfiveItemModel({this.iconButton, this.shopping, this.boughtDress, this.rs, this.time, this.id, }) { iconButton = iconButton  ?? ImageConstant.imgMagiconsGlyphEcommerce;shopping = shopping  ?? "Shopping";boughtDress = boughtDress  ?? "Bought Dress";rs = rs  ?? "- Rs 5850";time = time  ?? "11:00 am";id = id  ?? ""; }

String? iconButton;

String? shopping;

String? boughtDress;

String? rs;

String? time;

String? id;

 }
