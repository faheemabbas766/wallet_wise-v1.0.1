import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/budget_budget_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/budget_budget_provider.dart';

// ignore_for_file: must_be_immutable
class BudgetBudgetPage extends StatefulWidget {
  const BudgetBudgetPage({Key? key})
      : super(
          key: key,
        );

  @override
  BudgetBudgetPageState createState() => BudgetBudgetPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BudgetBudgetProvider(),
      child: BudgetBudgetPage(),
    );
  }
}

class BudgetBudgetPageState extends State<BudgetBudgetPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 19.v),
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildBudgetCard(context),
              SizedBox(height: 16.v),
              _buildBudgetCard1(context),
              Spacer(
                flex: 47,
              ),
              CustomElevatedButton(
                text: "lbl_create_a_budget".tr,
              ),
              Spacer(
                flex: 52,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyphYellow80032x32,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 11.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_may".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgArrowRight2,
          margin: EdgeInsets.fromLTRB(28.h, 17.v, 28.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBudgetCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.outlineGray100012.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                        decoration: BoxDecoration(
                          color: appTheme.amberA700,
                          borderRadius: BorderRadius.circular(
                            7.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_shopping".tr,
                          style: CustomTextStyles.titleSmallGray90002,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMagiconsGlyphUserRed500,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_remaining_rs_0".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 13.v),
          CustomImageView(
            imagePath: ImageConstant.imgProgressBar,
            height: 1.v,
            width: 311.h,
            margin: EdgeInsets.only(left: 1.h),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_rs_1200_of_rs_1000".tr,
              style: CustomTextStyles.titleMediumPrimaryContainer,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_you_ve_exceed_the".tr,
              style: CustomTextStyles.bodyMediumRed500,
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBudgetCard1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineGray100012.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      7.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 3.v,
                    right: 9.h,
                  ),
                  child: Text(
                    "lbl_transportation".tr,
                    style: CustomTextStyles.titleSmallGray90002,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "msg_remaining_rs_1350".tr,
            style: CustomTextStyles.headlineSmallGray90002,
          ),
          SizedBox(height: 13.v),
          CustomImageView(
            imagePath: ImageConstant.imgProgressBarGray100011x311,
            height: 1.v,
            width: 311.h,
          ),
          SizedBox(height: 7.v),
          Text(
            "msg_rs_1350_of_rs_1700".tr,
            style: CustomTextStyles.titleMediumPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
