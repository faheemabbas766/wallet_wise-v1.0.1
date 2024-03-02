import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/custom_pin_code_text_field.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
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
        appBar: AppBar(backgroundColor: Colors.transparent,),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
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
                SizedBox(height: 120,),
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
                      hintStyle: TextStyle(color: Colors.black),
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed(AppRoutes.accountSetupScreen);
                  },
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
}
