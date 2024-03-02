import 'package:wallet_wise/widgets/custom_icon_button.dart';
import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/profile_provider.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfilePage(),
    );
  }
}

class ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              _buildWomanOne(context),
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "lbl_muhammad_saad3".tr,
                        style: CustomTextStyles.titleLargePoppinsGray90001,
                      ),
                      SizedBox(height: 57.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration:
                                    IconButtonStyleHelper.fillYellowTL15,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroupAdd,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 34.h,
                                  top: 10.v,
                                  bottom: 9.v,
                                ),
                                child: Text(
                                  "lbl_invite_friends".tr,
                                  style: CustomTextStyles
                                      .bodyLargeDMSansBlack90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration:
                                    IconButtonStyleHelper.fillYellowTL15,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSearch,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 34.h,
                                  top: 12.v,
                                  bottom: 7.v,
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  style: CustomTextStyles
                                      .bodyLargeDMSansBlack90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(
                            children: [
                              CustomIconButton(
                                height: 44.adaptSize,
                                width: 44.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration:
                                    IconButtonStyleHelper.fillYellowTL15,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgContactSupport,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 34.h,
                                  top: 12.v,
                                  bottom: 7.v,
                                ),
                                child: Text(
                                  "msg_customer_support".tr,
                                  style: CustomTextStyles
                                      .bodyLargeDMSansBlack90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Divider(),
                      SizedBox(height: 201.v),
                      _buildEnvelopeSimpleFill(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWomanOne(BuildContext context) {
    return SizedBox(
      height: 290.v,
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
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder60,
              ),
              child: Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder60,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgWoman1,
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      radius: BorderRadius.circular(
                        60.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 2.h,
                        bottom: 4.v,
                      ),
                      child: CustomIconButton(
                        height: 36.v,
                        width: 37.h,
                        padding: EdgeInsets.all(2.h),
                        decoration: IconButtonStyleHelper.fillLightGreen,
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMagiconsOutlineUser,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomAppBar(
            height: 71.v,
            leadingWidth: 43.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 19.h,
                top: 12.v,
                bottom: 12.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitleNine(
              text: "lbl_profile".tr,
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgBell1,
                margin: EdgeInsets.symmetric(horizontal: 17.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEnvelopeSimpleFill(BuildContext context) {
    return SizedBox(
      height: 82.v,
      width: 374.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame18,
            height: 80.v,
            width: 374.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEnvelopeSimpleFill,
            height: 30.adaptSize,
            width: 30.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 110.h),
          ),
        ],
      ),
    );
  }
}
