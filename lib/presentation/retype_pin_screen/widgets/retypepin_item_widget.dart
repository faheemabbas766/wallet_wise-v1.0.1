import '../models/retypepin_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class RetypepinItemWidget extends StatelessWidget {
  RetypepinItemWidget(
    this.retypepinItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RetypepinItemModel retypepinItemModelObj;

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
        retypepinItemModelObj.one!,
        style: theme.textTheme.displayMedium,
      ),
    );
  }
}
