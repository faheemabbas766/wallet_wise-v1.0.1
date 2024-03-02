import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:wallet_wise/widgets/custom_text_form_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/transfer_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/transfer_provider.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TransferScreenState createState() => TransferScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransferProvider(),
      child: TransferScreen(),
    );
  }
}

class TransferScreenState extends State<TransferScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 42.v),
              Opacity(
                opacity: 0.64,
                child: Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "lbl_how_much".tr,
                    style: CustomTextStyles.titleMediumGray50SemiBold18,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 28.h),
                child: Text(
                  "lbl_rs_0".tr,
                  style: CustomTextStyles.displayLargeGray50,
                ),
              ),
              SizedBox(height: 16.v),
              _buildFrame(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue1(context),
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
        text: "lbl_transfer".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Selector<TransferProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.inputFieldController,
          builder: (context, inputFieldController, child) {
            return CustomTextFormField(
              controller: inputFieldController,
              hintText: "lbl_from".tr,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 18.v,
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Selector<TransferProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.inputFieldController1,
          builder: (context, inputFieldController1, child) {
            return CustomTextFormField(
              controller: inputFieldController1,
              hintText: "lbl_to".tr,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 18.v,
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Selector<TransferProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.inputFieldController2,
      builder: (context, inputFieldController2, child) {
        return CustomTextFormField(
          width: 343.h,
          controller: inputFieldController2,
          hintText: "lbl_description".tr,
          alignment: Alignment.bottomCenter,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 18.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Selector<TransferProvider, TextEditingController?>(
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
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
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
          SizedBox(
            height: 128.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 72.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildInputField(context),
                        _buildInputField1(context),
                      ],
                    ),
                  ),
                ),
                _buildInputField2(context),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 64.v,
                    width: 40.h,
                    margin: EdgeInsets.only(top: 26.v),
                    padding: EdgeInsets.all(7.h),
                    decoration: AppDecoration.outlineGray100011.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMagiconsFlatF,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: DottedBorder(
              color: appTheme.gray10001,
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              radius: Radius.circular(16),
              borderType: BorderType.RRect,
              dashPattern: [
                8,
                8,
              ],
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 89.h,
                  vertical: 11.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMagiconsGlyphUser,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "lbl_add_attachment".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          _buildLocation(context),
          SizedBox(height: 85.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_continue".tr,
    );
  }

  /// Section Widget
  Widget _buildContinue1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 50.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: _buildContinue(context),
    );
  }
}
