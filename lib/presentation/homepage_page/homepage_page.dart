import 'package:wallet_wise/widgets/custom_icon_button.dart';
import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_title.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'widgets/ninetyfive_item_widget.dart';
import 'models/ninetyfive_item_model.dart';
import 'models/homepage_model.dart';
import 'widgets/eightyone_item_widget.dart';
import 'models/eightyone_item_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/homepage_provider.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatefulWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepagePageState createState() => HomepagePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomepageProvider(),
      child: HomepagePage(),
    );
  }
}

class HomepagePageState extends State<HomepagePage> {
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
              _buildTotalBalance(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Column(
                  children: [
                    SizedBox(height: 17.v),
                    _buildFrameEight(context),
                    SizedBox(height: 6.v),
                    _buildNinetyFive(context),
                    SizedBox(height: 21.v),
                    _buildFrameFourteen(context),
                    SizedBox(height: 9.v),
                    _buildEightyOne(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalBalance(BuildContext context) {
    return SizedBox(
      height: 317.v,
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
          Opacity(
            opacity: 0.1,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse7153x157,
              height: 153.v,
              width: 157.h,
              alignment: Alignment.topLeft,
            ),
          ),
          Opacity(
            opacity: 0.1,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse868x127,
              height: 68.v,
              width: 127.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 59.h),
            ),
          ),
          Opacity(
            opacity: 0.1,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse919x85,
              height: 19.v,
              width: 85.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 127.h),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 9.h),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 22.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup7,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_total_balance".tr,
                          style: CustomTextStyles.titleMediumWhiteA700SemiBold,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDownGray200,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_rs_22_548".tr,
                      style: CustomTextStyles.headlineLargeInter,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomIconButton(
                                  height: 22.adaptSize,
                                  width: 22.adaptSize,
                                  padding: EdgeInsets.all(2.h),
                                  decoration: IconButtonStyleHelper.fillGreen,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgLightBulb,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    "lbl_income".tr,
                                    style: CustomTextStyles.titleMediumGreen800,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "lbl_rs_30_500".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: CustomIconButton(
                                    height: 22.adaptSize,
                                    width: 22.adaptSize,
                                    padding: EdgeInsets.all(2.h),
                                    decoration: IconButtonStyleHelper.fillRedA,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgLightBulb,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 2.h,
                                    top: 2.v,
                                  ),
                                  child: Text(
                                    "lbl_expenses".tr,
                                    style:
                                        CustomTextStyles.titleMediumRedA70018,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_rs_20_048".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 100.v,
            title: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Column(
                children: [
                  AppbarSubtitleSeven(
                    text: "lbl_good_morning".tr,
                  ),
                  AppbarTitle(
                    text: "lbl_saad".tr,
                    margin: EdgeInsets.only(right: 79.h),
                  ),
                ],
              ),
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgVector,
                margin: EdgeInsets.only(
                  left: 19.h,
                  top: 2.v,
                  right: 26.h,
                ),
              ),
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgBell1,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 2.v,
                  right: 45.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 3.v,
            ),
            child: Text(
              "msg_transactions_history".tr,
              style: CustomTextStyles.titleMediumGray90001,
            ),
          ),
          CustomElevatedButton(
            height: 32.v,
            width: 79.h,
            text: "lbl_see_all".tr,
            buttonStyle: CustomButtonStyles.fillLimeTL16,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Consumer<HomepageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount: provider.homepageModelObj.ninetyfiveItemList.length,
            itemBuilder: (context, index) {
              NinetyfiveItemModel model =
                  provider.homepageModelObj.ninetyfiveItemList[index];
              return NinetyfiveItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFourteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_chat".tr,
            style: CustomTextStyles.titleMediumGray90001,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: Text(
              "lbl_see_all2".tr,
              style: CustomTextStyles.bodyMedium14,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyOne(BuildContext context) {
    return SizedBox(
      height: 62.v,
      child: Consumer<HomepageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 7.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 14.h,
              );
            },
            itemCount: provider.homepageModelObj.eightyoneItemList.length,
            itemBuilder: (context, index) {
              EightyoneItemModel model =
                  provider.homepageModelObj.eightyoneItemList[index];
              return EightyoneItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
