import '../models/eightyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class EightyoneItemWidget extends StatelessWidget {
  EightyoneItemWidget(
    this.eightyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightyoneItemModel eightyoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: CustomImageView(
        imagePath: eightyoneItemModelObj?.image,
        height: 62.v,
        width: 58.h,
        radius: BorderRadius.circular(
          31.h,
        ),
      ),
    );
  }
}
