import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'package:wallet_wise/presentation/onboardingone_screen/onboardingone_screen.dart';
import 'package:wallet_wise/presentation/onboardingthree_screen/onboardingthree_screen.dart';
import 'package:wallet_wise/presentation/onboardingtwo_screen/onboardingtwo_screen.dart';
import '../../widgets/custom_elevated_button.dart';
import '../onboardingone_screen/models/takefullcontrol_item_model.dart';
import '../onboardingone_screen/provider/onboardingone_provider.dart';
import '../onboardingone_screen/widgets/takefullcontrol_item_widget.dart';
import 'provider/splashscreen_provider.dart';

class SplashscreenScreen extends StatefulWidget {
  const SplashscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashscreenScreenState createState() => SplashscreenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashscreenProvider(),
      child: SplashscreenScreen(),
    );
  }
}

class SplashscreenScreenState extends State<SplashscreenScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => PageChange()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 21.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildWalletWise(context),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 244.h,
                  margin: EdgeInsets.symmetric(horizontal: 44.h),
                  child: Text(
                    "msg_your_compass_to".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleLargeDMSansYellow800.copyWith(
                      height: 1.57,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWalletWise(BuildContext context) {
    return SizedBox(
      height: 102.v,
      width: 306.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 102.v,
              width: 500.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.yellow800.withOpacity(0.37),
                    blurRadius: 10, // Adjust the blur radius as needed
                    spreadRadius: 5, // Set spread radius to 0 for no spreading
                    offset: Offset(0, 0), // Offset of the shadow
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_wallet".tr,
                    style: CustomTextStyles.displayMediumffffffff,
                  ),
                  TextSpan(
                    text: "lbl_wise".tr,
                    style: CustomTextStyles.displayMediumffe9ab17,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

class PageChange extends StatefulWidget {
  @override
  State<PageChange> createState() => _PageChangeState();
}

class _PageChangeState extends State<PageChange> {
  PageController controller = PageController();

  int sliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: PageView(
            allowImplicitScrolling: true,
            children: [
              OnboardingoneScreen(),
              OnboardingtwoScreen(),
              OnboardingthreeScreen(),
            ],
            scrollDirection: Axis.horizontal,
            controller: controller,
            onPageChanged: (num) {
              setState(() {
                sliderIndex = num;
              });
            },
          ),
        ),
      ),
      bottomSheet: _buildSignUp(context),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 180,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 0.v,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16.v,
            child: AnimatedSmoothIndicator(
              activeIndex: sliderIndex,
              count: 3,
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
          ),
          SizedBox(height: 40),
          CustomElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.signupScreen);
            },
            text: "lbl_sign_up".tr,
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.outlineLime,
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.loginScreen);
            },
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
