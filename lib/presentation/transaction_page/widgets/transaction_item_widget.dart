import '../models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget(
    this.transactionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactionItemModel transactionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              transactionItemModelObj.yesterday!,
              style: CustomTextStyles.titleMediumBlack900SemiBold,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              transactionItemModelObj.yesterday1!,
              style: CustomTextStyles.titleMediumBlack900SemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
