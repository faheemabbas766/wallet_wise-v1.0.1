import '../../../core/app_export.dart';/// This class is used in the [statistics_item_widget] screen.
class StatisticsItemModel {StatisticsItemModel({this.magiconsGlyph, this.salary, this.month, this.rp, this.time, this.id, }) { magiconsGlyph = magiconsGlyph  ?? ImageConstant.imgMagiconsGlyphTeal500;salary = salary  ?? "Salary";month = month  ?? "Salary for July";rp = rp  ?? "+ Rs 5000";time = time  ?? "04:30 PM";id = id  ?? ""; }

String? magiconsGlyph;

String? salary;

String? month;

String? rp;

String? time;

String? id;

 }
