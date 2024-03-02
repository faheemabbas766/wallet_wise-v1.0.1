import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.v,
      width: 363.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationsItemModelObj.youHaveAMessage!,
                  style: CustomTextStyles.bodyLargeOpenSansYellow800,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseYellow800,
                  height: 16.v,
                  width: 14.h,
                  margin: EdgeInsets.only(
                    left: 85.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillYellow8001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Container(
                height: 7.adaptSize,
                width: 7.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.green400,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
