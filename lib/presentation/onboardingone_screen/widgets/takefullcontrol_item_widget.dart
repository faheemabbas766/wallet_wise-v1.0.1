import '../models/takefullcontrol_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class TakefullcontrolItemWidget extends StatelessWidget {
  TakefullcontrolItemWidget(
    this.takefullcontrolItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TakefullcontrolItemModel takefullcontrolItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 254.h,
          child: Text(
            "msg_take_full_control".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.headlineLargeInterYellow800.copyWith(
              height: 1.22,
            ),
          ),
        ),
        SizedBox(height: 9.v),
        SizedBox(
          width: 251.h,
          child: Text(
            "msg_managing_your_finances".tr,
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
