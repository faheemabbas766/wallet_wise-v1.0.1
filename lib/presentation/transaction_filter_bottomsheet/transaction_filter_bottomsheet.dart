import 'package:wallet_wise/widgets/custom_icon_button.dart';
import 'models/transaction_filter_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/transaction_filter_provider.dart';

// ignore_for_file: must_be_immutable
class TransactionFilterBottomsheet extends StatefulWidget {
  const TransactionFilterBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionFilterBottomsheetState createState() =>
      TransactionFilterBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionFilterProvider(),
      child: TransactionFilterBottomsheet(),
    );
  }
}

class TransactionFilterBottomsheetState
    extends State<TransactionFilterBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildCardTransaction(context);
  }

  /// Section Widget
  Widget _buildCardTransaction(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder23,
      ),
      child: Container(
        height: 89.v,
        width: 336.h,
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder23,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 14.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMagiconsGlyphYellow800,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        top: 6.v,
                        bottom: 4.v,
                      ),
                      child: _buildFrameThree(
                        context,
                        shopping: "lbl_subscription".tr,
                        buyAnAvocado: "msg_disney_annual".tr,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.v),
                      child: _buildFrameFortySeven(
                        context,
                        price: "lbl_80".tr,
                        time: "lbl_03_30_pm".tr,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 14.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: CustomIconButton(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMagiconsGlyphYellow800,
                        ),
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
                            "lbl_subscription".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 12.v),
                          Text(
                            "msg_disney_annual".tr,
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
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "lbl_80".tr,
                              style: CustomTextStyles.titleMediumRed500,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Text(
                            "lbl_03_30_pm".tr,
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrameThree(
    BuildContext context, {
    required String shopping,
    required String buyAnAvocado,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          shopping,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          buyAnAvocado,
          style: CustomTextStyles.labelLargePrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameFortySeven(
    BuildContext context, {
    required String price,
    required String time,
  }) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            price,
            style: CustomTextStyles.titleMediumRed500.copyWith(
              color: appTheme.red500,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          time,
          style: CustomTextStyles.labelLargePrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
