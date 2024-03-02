import '../models/statistics_item_model.dart';
import 'package:wallet_wise/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class StatisticsItemWidget extends StatelessWidget {
  StatisticsItemWidget(
    this.statisticsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StatisticsItemModel statisticsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillYellow800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder23,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillTealTL16,
            child: CustomImageView(
              imagePath: statisticsItemModelObj?.magiconsGlyph,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  statisticsItemModelObj.salary!,
                  style: CustomTextStyles.titleMediumPrimary,
                ),
                SizedBox(height: 12.v),
                Text(
                  statisticsItemModelObj.month!,
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Column(
              children: [
                Text(
                  statisticsItemModelObj.rp!,
                  style: CustomTextStyles.titleMediumGreen400,
                ),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    statisticsItemModelObj.time!,
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
