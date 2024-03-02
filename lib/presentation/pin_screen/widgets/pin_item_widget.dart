import '../models/pin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class PinItemWidget extends StatelessWidget {
  PinItemWidget(
    this.pinItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PinItemModel pinItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillYellow800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Text(
        pinItemModelObj.one!,
        style: theme.textTheme.displayMedium,
      ),
    );
  }
}
