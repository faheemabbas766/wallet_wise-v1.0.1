import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/planwisely_item_widget.dart';
import 'models/planwisely_item_model.dart';
import 'models/onboardingthree_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/onboardingthree_provider.dart';

class OnboardingthreeScreen extends StatefulWidget {
  const OnboardingthreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingthreeScreenState createState() => OnboardingthreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingthreeProvider(),
      child: OnboardingthreeScreen(),
    );
  }
}

class OnboardingthreeScreenState extends State<OnboardingthreeScreen> {
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
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 42.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 32.v),
                    _buildPlanWisely(context),
                    SizedBox(height: 32.v),
                    Consumer<OnboardingthreeProvider>(
                      builder: (context, provider, child) {
                        return SizedBox(
                          height: 16.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: provider.sliderIndex,
                            count: provider.onboardingthreeModelObj
                                .planwiselyItemList.length,
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
  Widget _buildSkip(BuildContext context) {
    return SizedBox(
      height: 332.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage281x327,
            height: 281.v,
            width: 327.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 17.v),
          ),
          CustomAppBar(
            height: 332.v,
            actions: [
              AppbarTrailingButton(
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
  Widget _buildPlanWisely(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Consumer<OnboardingthreeProvider>(
        builder: (context, provider, child) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 109.v,
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
            itemCount:
                provider.onboardingthreeModelObj.planwiselyItemList.length,
            itemBuilder: (context, index, realIndex) {
              PlanwiselyItemModel model =
                  provider.onboardingthreeModelObj.planwiselyItemList[index];
              return PlanwiselyItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
