import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_thirteen.dart';
import 'models/settings_currency_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/settings_currency_provider.dart';

class SettingsCurrencyScreen extends StatefulWidget {
  const SettingsCurrencyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingsCurrencyScreenState createState() => SettingsCurrencyScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsCurrencyProvider(),
      child: SettingsCurrencyScreen(),
    );
  }
}

class SettingsCurrencyScreenState extends State<SettingsCurrencyScreen> {
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
              vertical: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildListItemSelect(context),
                SizedBox(height: 27.v),
                Text(
                  "msg_united_states_usd".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_japan_jpy".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 34.v),
                Text(
                  "lbl_russia_rub".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_germany_eur".tr,
                  style: theme.textTheme.titleSmall,
                ),
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
        imagePath: ImageConstant.imgMagiconsGlyph,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThirteen(
        text: "lbl_currency".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildListItemSelect(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: Text(
            "lbl_pakistan_pkr".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMagiconsFlatUser,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
      ],
    );
  }
}
