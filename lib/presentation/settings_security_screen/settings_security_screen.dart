import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_thirteen.dart';
import 'models/settings_security_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/settings_security_provider.dart';

class SettingsSecurityScreen extends StatefulWidget {
  const SettingsSecurityScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingsSecurityScreenState createState() => SettingsSecurityScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsSecurityProvider(),
      child: SettingsSecurityScreen(),
    );
  }
}

class SettingsSecurityScreenState extends State<SettingsSecurityScreen> {
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
                _buildListItemSelect(context),
                SizedBox(height: 28.v),
                Text(
                  "lbl_fingerprint".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 33.v),
                Text(
                  "lbl_face_id".tr,
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
        text: "lbl_security".tr,
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
            "lbl_pin".tr,
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
