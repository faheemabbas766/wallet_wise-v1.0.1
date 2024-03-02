import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/chat_provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChatScreenState createState() => ChatScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: ChatScreen(),
    );
  }
}

class ChatScreenState extends State<ChatScreen> {
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
              _buildSarah(context),
              SizedBox(height: 232.v),
              _buildScrollView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSarah(BuildContext context) {
    return SizedBox(
      height: 153.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomAppBar(
            height: 105.v,
            title: AppbarSubtitle(
              text: "lbl_sarah".tr,
              margin: EdgeInsets.only(left: 50.h),
            ),
            actions: [
              AppbarTrailingIconbuttonOne(
                imagePath: ImageConstant.imgUserGray5056x56,
                margin: EdgeInsets.fromLTRB(28.h, 44.v, 29.h, 2.v),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgCall,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 42.v,
                  right: 29.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgUpload,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 42.v,
                  right: 57.h,
                ),
              ),
            ],
            styleType: Style.bgFill_1,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup6Yellow800,
            height: 153.v,
            width: 212.h,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 114.h,
                      margin: EdgeInsets.only(top: 60.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.v,
                            width: 45.h,
                            margin: EdgeInsets.only(bottom: 21.v),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage850x45,
                                  height: 50.v,
                                  width: 45.h,
                                  radius: BorderRadius.circular(
                                    22.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage950x45,
                                  height: 50.v,
                                  width: 45.h,
                                  radius: BorderRadius.circular(
                                    22.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.v),
                            child: Column(
                              children: [
                                CustomElevatedButton(
                                  height: 45.v,
                                  width: 57.h,
                                  text: "lbl_yes".tr,
                                  buttonStyle: CustomButtonStyles.fillLimeTL16,
                                  buttonTextStyle: CustomTextStyles
                                      .bodyMediumPoppinsOnPrimaryContainer,
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "lbl_10_32".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 68.v),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillYellow800.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Text(
                              "msg_hello_you_there".tr,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsOnPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: Text(
                                "lbl_10_30".tr,
                                style: CustomTextStyles.bodySmallBluegray200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 4.v),
            CustomElevatedButton(
              height: 45.v,
              width: 214.h,
              text: "msg_send_me_rs_1500".tr,
              margin: EdgeInsets.only(right: 12.h),
              buttonStyle: CustomButtonStyles.fillYellowTL14,
              buttonTextStyle:
                  CustomTextStyles.bodyMediumPoppinsOnPrimaryContainer,
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(right: 28.h),
              child: Text(
                "lbl_10_30".tr,
                style: CustomTextStyles.bodySmallBluegray200,
              ),
            ),
            SizedBox(height: 12.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1050x45,
                      height: 50.v,
                      width: 45.h,
                      radius: BorderRadius.circular(
                        22.h,
                      ),
                      margin: EdgeInsets.only(bottom: 13.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomElevatedButton(
                            height: 45.v,
                            width: 104.h,
                            text: "lbl_okay_wait".tr,
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
                  ],
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAttach,
                    height: 22.v,
                    width: 10.h,
                    margin: EdgeInsets.only(
                      left: 15.h,
                      bottom: 54.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                      bottom: 51.v,
                    ),
                    child: Text(
                      "msg_type_something".tr,
                      style: CustomTextStyles.bodyLargePoppinsYellow800,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgCameraAlt,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 54.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMic,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 54.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorYellow800,
                    height: 18.v,
                    width: 21.h,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      top: 3.v,
                      bottom: 57.v,
                    ),
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
