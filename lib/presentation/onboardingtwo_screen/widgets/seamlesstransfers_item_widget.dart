import '../models/seamlesstransfers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class SeamlesstransfersItemWidget extends StatelessWidget {
  SeamlesstransfersItemWidget(
    this.seamlesstransfersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeamlesstransfersItemModel seamlesstransfersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320.h,
          child: Text(
            "msg_seamless_transfers".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.headlineLargeInterYellow800.copyWith(
              height: 1.22,
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Container(
          width: 272.h,
          margin: EdgeInsets.only(
            left: 27.h,
            right: 21.h,
          ),
          child: Text(
            "msg_track_your_transaction".tr,
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
