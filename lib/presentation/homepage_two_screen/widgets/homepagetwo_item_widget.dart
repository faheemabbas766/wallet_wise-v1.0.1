import '../models/homepagetwo_item_model.dart';
import 'package:wallet_wise/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class HomepagetwoItemWidget extends StatelessWidget {
  HomepagetwoItemWidget(
    this.homepagetwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomepagetwoItemModel homepagetwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 51.v,
          width: 50.h,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillOrange,
          child: CustomImageView(
            imagePath: homepagetwoItemModelObj?.iconButton,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 5.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                homepagetwoItemModelObj.shopping!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                homepagetwoItemModelObj.boughtDress!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 127.h,
            top: 10.v,
          ),
          child: Column(
            children: [
              Text(
                homepagetwoItemModelObj.rs!,
                style: CustomTextStyles.titleMediumRedA700,
              ),
              SizedBox(height: 1.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Text(
                    homepagetwoItemModelObj.time!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
