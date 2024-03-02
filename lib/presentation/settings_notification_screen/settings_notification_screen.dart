import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_thirteen.dart';
import 'package:wallet_wise/widgets/custom_switch.dart';
import 'models/settings_notification_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/settings_notification_provider.dart';

class SettingsNotificationScreen extends StatefulWidget {
  const SettingsNotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingsNotificationScreenState createState() =>
      SettingsNotificationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsNotificationProvider(),
      child: SettingsNotificationScreen(),
    );
  }
}

class SettingsNotificationScreenState
    extends State<SettingsNotificationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.yellow800,
                appTheme.lightGreen900,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildListItemSwitch(context),
                SizedBox(height: 18.v),
                _buildListItemSwitch1(context),
                SizedBox(height: 17.v),
                _buildListItemSwitch2(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyphPrimary32x32,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThirteen(
        text: "lbl_notification".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildListItemSwitch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_expense_alert".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                width: 176.h,
                child: Text(
                  "msg_get_notification".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLime90001.copyWith(
                    height: 1.23,
                  ),
                ),
              ),
            ],
          ),
          Selector<SettingsNotificationProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch,
            builder: (context, isSelectedSwitch, child) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 14.v,
                  bottom: 18.v,
                ),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<SettingsNotificationProvider>()
                      .changeSwitchBox1(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListItemSwitch1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_budget".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                width: 174.h,
                child: Text(
                  "msg_get_notification2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLime90001.copyWith(
                    height: 1.23,
                  ),
                ),
              ),
            ],
          ),
          Selector<SettingsNotificationProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch1,
            builder: (context, isSelectedSwitch1, child) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 14.v,
                  bottom: 18.v,
                ),
                value: isSelectedSwitch1,
                onChange: (value) {
                  context
                      .read<SettingsNotificationProvider>()
                      .changeSwitchBox2(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListItemSwitch2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_tips_articles".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                width: 197.h,
                child: Text(
                  "msg_small_useful_pieces".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLime90001.copyWith(
                    height: 1.23,
                  ),
                ),
              ),
            ],
          ),
          Selector<SettingsNotificationProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch2,
            builder: (context, isSelectedSwitch2, child) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 14.v,
                  bottom: 15.v,
                ),
                value: isSelectedSwitch2,
                onChange: (value) {
                  context
                      .read<SettingsNotificationProvider>()
                      .changeSwitchBox3(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
