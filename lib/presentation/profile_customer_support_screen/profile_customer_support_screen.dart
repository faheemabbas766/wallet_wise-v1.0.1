import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/profile_customer_support_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/profile_customer_support_provider.dart';

class ProfileCustomerSupportScreen extends StatefulWidget {
  const ProfileCustomerSupportScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileCustomerSupportScreenState createState() =>
      ProfileCustomerSupportScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileCustomerSupportProvider(),
      child: ProfileCustomerSupportScreen(),
    );
  }
}

class ProfileCustomerSupportScreenState
    extends State<ProfileCustomerSupportScreen> {
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
          child: Column(
            children: [
              _buildCustomerSupport(context),
              SizedBox(height: 290.v),
              _buildScrollView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCustomerSupport(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 153.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CustomAppBar(
                height: 105.v,
                centerTitle: true,
                title: AppbarSubtitle(
                  text: "msg_customer_support".tr,
                ),
                styleType: Style.bgFill_1,
              ),
              Opacity(
                opacity: 0.1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 153.v,
                    width: 212.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        106.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0.12, 0.01),
                        end: Alignment(1.2, 1.09),
                        colors: [
                          appTheme.yellow800.withOpacity(0.39),
                          appTheme.whiteA700.withOpacity(0.39),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 68.v,
                    width: 127.h,
                    margin: EdgeInsets.only(left: 59.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        63.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0.12, 0.01),
                        end: Alignment(1.2, 1.09),
                        colors: [
                          appTheme.yellow800.withOpacity(0.39),
                          appTheme.whiteA700.withOpacity(0.39),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 19.v,
                    width: 85.h,
                    margin: EdgeInsets.only(left: 127.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        42.h,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0.12, 0.01),
                        end: Alignment(1.2, 1.09),
                        colors: [
                          appTheme.yellow800.withOpacity(0.39),
                          appTheme.whiteA700.withOpacity(0.39),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrame54,
                height: 36.v,
                width: 44.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 43.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                right: 75.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage845x44,
                    height: 45.v,
                    width: 44.h,
                    radius: BorderRadius.circular(
                      22.h,
                    ),
                    margin: EdgeInsets.only(bottom: 18.v),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 10.v,
                            ),
                            decoration: AppDecoration.fillLime.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 2.v),
                                Text(
                                  "msg_how_can_we_help".tr,
                                  style: CustomTextStyles
                                      .bodyMediumPoppinsOnPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_10_32".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.v),
            CustomElevatedButton(
              height: 45.v,
              width: 248.h,
              text: "msg_i_am_unable_to_transfer".tr,
              margin: EdgeInsets.only(right: 12.h),
              buttonStyle: CustomButtonStyles.fillYellowTL14,
              buttonTextStyle:
                  CustomTextStyles.bodyMediumPoppinsOnPrimaryContainer,
              alignment: Alignment.centerRight,
            ),
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 28.h),
                child: Text(
                  "lbl_10_30".tr,
                  style: CustomTextStyles.bodySmallBluegray200,
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                right: 80.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage850x45,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    radius: BorderRadius.circular(
                      22.h,
                    ),
                    margin: EdgeInsets.only(bottom: 18.v),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomElevatedButton(
                            height: 45.v,
                            text: "msg_sorry_for_the_inconvenience".tr,
                            buttonStyle: CustomButtonStyles.fillLimeTL16,
                            buttonTextStyle: CustomTextStyles
                                .bodyMediumPoppinsOnPrimaryContainer,
                          ),
                          SizedBox(height: 3.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_10_32".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      bottom: 49.v,
                    ),
                    child: Text(
                      "msg_type_something".tr,
                      style: CustomTextStyles.bodyLargePoppinsYellow800,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorYellow800,
                    height: 18.v,
                    width: 21.h,
                    margin: EdgeInsets.only(bottom: 54.v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
