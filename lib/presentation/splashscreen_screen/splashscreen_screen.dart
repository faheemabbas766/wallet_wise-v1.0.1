import 'models/splashscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
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
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 102.v,
              width: 112.h,
              decoration: BoxDecoration(
                color: appTheme.yellow800.withOpacity(0.57),
                borderRadius: BorderRadius.circular(
                  56.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
