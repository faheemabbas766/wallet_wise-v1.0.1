import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/custom_pin_code_text_field.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/otp_provider.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OtpScreenState createState() => OtpScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OtpProvider(),
      child: OtpScreen(),
    );
  }
}

class OtpScreenState extends State<OtpScreen> {
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
        resizeToAvoidBottomInset: false,
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
                appTheme.black90001,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 239.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "msg_enter_your_verification".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                Selector<OtpProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  height: 40.v,
                  width: 200.h,
                  text: "lbl_verify".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallPoppinsWhiteA700,
                ),
                SizedBox(height: 14.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "lbl_send_code_again".tr,
                        style: CustomTextStyles.bodyLargeNotoSansBlack90001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_00_20".tr,
                        style: CustomTextStyles.titleMediumNotoSansPrimary,
                      ),
                    ),
                  ],
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
      leadingWidth: double.maxFinite,
      leading: Container(
        height: 14.adaptSize,
        width: 14.adaptSize,
        margin: EdgeInsets.fromLTRB(21.h, 21.v, 340.h, 21.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorPrimary,
              height: 3.v,
              width: 14.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 4.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorPrimary14x7,
              height: 14.v,
              width: 7.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(right: 7.h),
            ),
          ],
        ),
      ),
    );
  }
}
