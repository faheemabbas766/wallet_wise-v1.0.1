import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_eight.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:wallet_wise/presentation/wallet_setup_page/wallet_setup_page.dart';
import 'models/wallet_setup_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/wallet_setup_tab_container_provider.dart';

class WalletSetupTabContainerScreen extends StatefulWidget {
  const WalletSetupTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WalletSetupTabContainerScreenState createState() =>
      WalletSetupTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WalletSetupTabContainerProvider(),
      child: WalletSetupTabContainerScreen(),
    );
  }
}

class WalletSetupTabContainerScreenState
    extends State<WalletSetupTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 768.v,
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
                      imagePath: ImageConstant.imgEllipse7,
                      height: 153.v,
                      width: 157.h,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse8,
                      height: 68.v,
                      width: 127.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 59.h),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse9,
                      height: 19.v,
                      width: 85.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 127.h),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle18,
                    height: 731.v,
                    width: 375.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 7.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildTabview(context),
                          SizedBox(
                            height: 571.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                WalletSetupPage.builder(context),
                                WalletSetupPage.builder(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 77.v,
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleEight(
        text: "lbl_connect_wallet".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgBell1,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 42.v,
      width: 303.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          21.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          3.5.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.yellow800.withOpacity(0.57),
          borderRadius: BorderRadius.circular(
            17.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_cards".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_accounts".tr,
            ),
          ),
        ],
      ),
    );
  }
}
