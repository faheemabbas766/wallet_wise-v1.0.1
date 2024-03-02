import 'package:wallet_wise/core/app_export.dart';import '../../../core/app_export.dart';import 'statistics_item_model.dart';class StatisticsModel {List<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)];

List<StatisticsItemModel> statisticsItemList = [StatisticsItemModel(magiconsGlyph:ImageConstant.imgMagiconsGlyphTeal500,salary: "Salary",month: "Salary for July",rp: "+ Rs 5000",time: "04:30 PM"),StatisticsItemModel(magiconsGlyph:ImageConstant.imgMagiconsGlyphEcommerceYellow800,salary: "Income",month: "App Dev Project",rp: "+ Rs 3000",time: "08:30 PM")];

 }
