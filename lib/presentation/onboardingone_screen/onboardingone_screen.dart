import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_fourteen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/takefullcontrol_item_widget.dart';
import 'models/takefullcontrol_item_model.dart';
import 'models/onboardingone_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/onboardingone_provider.dart';

class OnboardingoneScreen extends StatefulWidget {
  const OnboardingoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingoneScreenState createState() => OnboardingoneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingoneProvider(),
      child: OnboardingoneScreen(),
    );
  }
}

class OnboardingoneScreenState extends State<OnboardingoneScreen> {
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
              _buildSkip(context),
              _buildSignUp(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkip(BuildContext context) {
    return SizedBox(
      height: 375.adaptSize,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 366.v,
            width: 350.h,
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 332.v,
            actions: [
              AppbarSubtitleFourteen(
                text: "lbl_skip".tr,
                margin: EdgeInsets.fromLTRB(12.h, 9.v, 12.h, 297.v),
              ),
            ],
            styleType: Style.bgFill,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 8.v,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.h),
            child: Consumer<OnboardingoneProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 136.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex = index;
                    },
                  ),
                  itemCount: provider
                      .onboardingoneModelObj.takefullcontrolItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    TakefullcontrolItemModel model = provider
                        .onboardingoneModelObj.takefullcontrolItemList[index];
                    return TakefullcontrolItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 28.v),
          Consumer<OnboardingoneProvider>(
            builder: (context, provider, child) {
              return SizedBox(
                height: 16.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: provider.sliderIndex,
                  count: provider
                      .onboardingoneModelObj.takefullcontrolItemList.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 16,
                    activeDotColor: appTheme.yellow800,
                    dotColor: appTheme.yellow800.withOpacity(0.57),
                    activeDotScale: 2.0,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 33.v),
          CustomElevatedButton(
            text: "lbl_sign_up".tr,
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.outlineLime,
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "lbl_login".tr,
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.fillLime,
            buttonTextStyle: CustomTextStyles.titleMediumYellow800,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
