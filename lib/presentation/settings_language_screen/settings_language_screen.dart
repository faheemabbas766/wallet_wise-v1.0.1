import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_thirteen.dart';
import 'models/settings_language_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/settings_language_provider.dart';

class SettingsLanguageScreen extends StatefulWidget {
  const SettingsLanguageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingsLanguageScreenState createState() => SettingsLanguageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsLanguageProvider(),
      child: SettingsLanguageScreen(),
    );
  }
}

class SettingsLanguageScreenState extends State<SettingsLanguageScreen> {
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
                SizedBox(height: 27.v),
                Text(
                  "lbl_indonesian_id".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_arabic_ar".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_chinese_zh".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_dutch_nl".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_french_fr".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_german_de".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_italian_it".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_korean_ko".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_portuguese_pt".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 34.v),
                Text(
                  "lbl_russian_ru".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_spanish_es".tr,
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
        text: "lbl_language".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildListItemSelect(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_english_en".tr,
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
