import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wallet_wise/presentation/statistics_page/statistics_page.dart';
import 'models/statistics_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/statistics_tab_container_provider.dart';

class StatisticsTabContainerScreen extends StatefulWidget {
  const StatisticsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  StatisticsTabContainerScreenState createState() =>
      StatisticsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StatisticsTabContainerProvider(),
      child: StatisticsTabContainerScreen(),
    );
  }
}

class StatisticsTabContainerScreenState
    extends State<StatisticsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.v),
              _buildTabview(context),
              SizedBox(
                height: 623.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    StatisticsPage.builder(context),
                    StatisticsPage.builder(context),
                    StatisticsPage.builder(context),
                    StatisticsPage.builder(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyph,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleFour(
        text: "lbl_statistics".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDownloadAlt1,
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 16.h, 16.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 318.h,
      margin: EdgeInsets.only(left: 20.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.yellow800,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_day".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_week".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_month".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_year".tr,
            ),
          ),
        ],
      ),
    );
  }
}
