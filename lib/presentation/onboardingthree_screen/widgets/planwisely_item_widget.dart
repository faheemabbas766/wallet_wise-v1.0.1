import '../models/planwisely_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class PlanwiselyItemWidget extends StatelessWidget {
  PlanwiselyItemWidget(
    this.planwiselyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlanwiselyItemModel planwiselyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "lbl_plan_wisely".tr,
          style: CustomTextStyles.headlineLargeInterYellow800,
        ),
        SizedBox(height: 28.v),
        SizedBox(
          width: 287.h,
          child: Text(
            "msg_define_your_budget".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumLime90001,
          ),
        ),
      ],
    );
  }
}
