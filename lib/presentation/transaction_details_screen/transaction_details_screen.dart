import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'package:wallet_wise/widgets/custom_outlined_button.dart';
import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_two.dart';
import 'models/transaction_details_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/transaction_details_provider.dart';

class TransactionDetailsScreen extends StatefulWidget {
  const TransactionDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionDetailsScreenState createState() =>
      TransactionDetailsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionDetailsProvider(),
      child: TransactionDetailsScreen(),
    );
  }
}

class TransactionDetailsScreenState extends State<TransactionDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle9,
                    height: 243.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup6,
                    height: 153.v,
                    width: 212.h,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 8.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 19.v,
                            ),
                            decoration: AppDecoration.fillYellow800.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              height: 41.v,
                              width: 42.h,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          CustomElevatedButton(
                            height: 25.v,
                            width: 80.h,
                            text: "lbl_income".tr,
                            buttonStyle: CustomButtonStyles.fillYellow,
                            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "lbl_rs_28502".tr,
                            style: CustomTextStyles.headlineSmallBlack90001,
                          ),
                          SizedBox(height: 36.v),
                          _buildFrameThirty(context),
                          SizedBox(height: 19.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildThirty(
                              context,
                              from: "lbl_category".tr,
                              upwork: "lbl_income".tr,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildThirty(
                            context,
                            from: "lbl_from".tr,
                            upwork: "lbl_upwork".tr,
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildThirty(
                              context,
                              from: "lbl_time".tr,
                              upwork: "lbl_10_00_am2".tr,
                            ),
                          ),
                          SizedBox(height: 11.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildThirty(
                              context,
                              from: "lbl_date".tr,
                              upwork: "lbl_mar_2_2024".tr,
                            ),
                          ),
                          SizedBox(height: 11.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildThirty(
                              context,
                              from: "lbl_description".tr,
                              upwork: "lbl_app_dev_project2".tr,
                            ),
                          ),
                          SizedBox(height: 16.v),
                          Divider(
                            color: appTheme.gray30001,
                          ),
                          SizedBox(height: 18.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildThirty(
                              context,
                              from: "lbl_earnings".tr,
                              upwork: "lbl_rs_2870".tr,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildThirty(
                              context,
                              from: "lbl_fee".tr,
                              upwork: "lbl_rs_20_00".tr,
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Divider(
                            color: appTheme.gray30001,
                          ),
                          SizedBox(height: 18.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildThirty(
                              context,
                              from: "lbl_total".tr,
                              upwork: "lbl_rs_2850_00".tr,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          CustomOutlinedButton(
                            height: 60.v,
                            text: "msg_download_receipt".tr,
                            buttonStyle: CustomButtonStyles.outlineYellow,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumPrimarySemiBold,
                          ),
                          SizedBox(height: 59.v),
                        ],
                      ),
                    ),
                  ),
                  _buildAppBar(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_transaction_details".tr,
            style: CustomTextStyles.titleMediumBlack9000118,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyph,
        margin: EdgeInsets.only(left: 16.h),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_details".tr,
      ),
    );
  }

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String from,
    required String upwork,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            from,
            style: CustomTextStyles.titleMediumGray700_1.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          upwork,
          style: CustomTextStyles.titleMediumBlack90001.copyWith(
            color: appTheme.black90001,
          ),
        ),
      ],
    );
  }
}
