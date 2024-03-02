import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:wallet_wise/widgets/custom_drop_down.dart';
import 'models/income_model.dart';
import 'package:wallet_wise/widgets/custom_text_form_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:wallet_wise/widgets/custom_switch.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/income_provider.dart';

class IncomeScreen extends StatefulWidget {
  const IncomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  IncomeScreenState createState() => IncomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IncomeProvider(),
      child: IncomeScreen(),
    );
  }
}

class IncomeScreenState extends State<IncomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 63.v),
            child: Column(
              children: [
                Container(
                  decoration: AppDecoration.fillYellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.64,
                        child: Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "lbl_how_much".tr,
                            style:
                                CustomTextStyles.titleMediumSecondaryContainer,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "lbl_rs_0".tr,
                          style: CustomTextStyles.displayLargeGreen800,
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildFrame1(context),
                      _buildContinue(context),
                    ],
                  ),
                ),
                SizedBox(height: 547.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 104.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: _buildFortyNine(
                    context,
                    magiconsGlyphUser:
                        ImageConstant.imgMagiconsGlyphUserGray90002,
                    writeADescription: "msg_write_a_description".tr,
                  ),
                ),
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
      title: AppbarSubtitleFive(
        text: "lbl_income".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Selector<IncomeProvider, IncomeModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.incomeModelObj,
            builder: (context, incomeModelObj, child) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMagiconsGlyphArrowArrowdown2,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                ),
                hintText: "lbl_category".tr,
                hintStyle: theme.textTheme.bodyLarge!,
                items: incomeModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context.read<IncomeProvider>().onSelected(value);
                },
              );
            },
          ),
          SizedBox(height: 16.v),
          Selector<IncomeProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.inputFieldController,
            builder: (context, inputFieldController, child) {
              return CustomTextFormField(
                controller: inputFieldController,
                hintText: "lbl_description".tr,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.v,
                ),
              );
            },
          ),
          SizedBox(height: 15.v),
          _buildFortyNine(
            context,
            magiconsGlyphUser: ImageConstant.imgMagiconsGlyphUser,
            writeADescription: "lbl_add_attachment".tr,
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillWhiteA,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_repeat".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "msg_repeat_transaction".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Selector<IncomeProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch,
                  builder: (context, isSelectedSwitch, child) {
                    return CustomSwitch(
                      margin: EdgeInsets.symmetric(vertical: 8.v),
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context.read<IncomeProvider>().changeSwitchBox1(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Selector<IncomeProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.locationController,
            builder: (context, locationController, child) {
              return CustomTextFormField(
                controller: locationController,
                hintText: "lbl_location".tr,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.v,
                ),
              );
            },
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillWhiteA,
      child: CustomElevatedButton(
        text: "lbl_continue".tr,
        buttonStyle: CustomButtonStyles.fillGreen,
      ),
    );
  }

  /// Common widget
  Widget _buildFortyNine(
    BuildContext context, {
    required String magiconsGlyphUser,
    required String writeADescription,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: magiconsGlyphUser,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Text(
              writeADescription,
              style: CustomTextStyles.titleMediumPrimaryContainer.copyWith(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
