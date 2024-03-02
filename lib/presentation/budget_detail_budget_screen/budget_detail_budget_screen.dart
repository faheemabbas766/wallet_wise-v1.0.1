import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_ten.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wallet_wise/widgets/custom_outlined_button.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/budget_detail_budget_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/budget_detail_budget_provider.dart';

class BudgetDetailBudgetScreen extends StatefulWidget {
  const BudgetDetailBudgetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BudgetDetailBudgetScreenState createState() =>
      BudgetDetailBudgetScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BudgetDetailBudgetProvider(),
      child: BudgetDetailBudgetScreen(),
    );
  }
}

class BudgetDetailBudgetScreenState extends State<BudgetDetailBudgetScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              CustomOutlinedButton(
                width: 156.h,
                text: "lbl_shopping".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 12.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMagiconsGlyphEcommerce,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineYellowTL24,
              ),
              SizedBox(height: 33.v),
              Text(
                "lbl_remaining".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 1.v),
              Text(
                "lbl_rs_0".tr,
                style: CustomTextStyles.displayLargeBlack900,
              ),
              SizedBox(height: 31.v),
              CustomImageView(
                imagePath: ImageConstant.imgProgressBar,
                height: 1.v,
                width: 311.h,
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                height: 40.v,
                text: "msg_you_ve_exceed_the2".tr,
                margin: EdgeInsets.symmetric(horizontal: 46.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath:
                        ImageConstant.imgMagiconsGlyphUserInterfaceWarning,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillRed,
                buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildEdit(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyphPrimary32x32,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTen(
        text: "lbl_detail_budget".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMagiconsGlyphUserBlack900,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEdit(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_edit".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 36.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumYellow800,
    );
  }
}
