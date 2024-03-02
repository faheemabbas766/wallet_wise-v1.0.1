import 'package:wallet_wise/widgets/custom_pin_code_text_field.dart';
import 'package:wallet_wise/widgets/custom_outlined_button.dart';
import 'models/financial_report_income_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/financial_report_income_provider.dart';

class FinancialReportIncomeScreen extends StatefulWidget {
  const FinancialReportIncomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FinancialReportIncomeScreenState createState() =>
      FinancialReportIncomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FinancialReportIncomeProvider(),
      child: FinancialReportIncomeScreen(),
    );
  }
}

class FinancialReportIncomeScreenState
    extends State<FinancialReportIncomeScreen> {
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
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primary,
                appTheme.lime900,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 19.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Selector<FinancialReportIncomeProvider, TextEditingController?>(
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
                SizedBox(height: 36.v),
                Text(
                  "lbl_saad".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 3.v),
                Opacity(
                  opacity: 0.72,
                  child: Text(
                    "lbl_this_month".tr,
                    style: CustomTextStyles.headlineSmallWhiteA700_1,
                  ),
                ),
                SizedBox(height: 89.v),
                Text(
                  "lbl_you_earned".tr,
                  style: CustomTextStyles.headlineLargeInterBold,
                ),
                SizedBox(height: 24.v),
                Text(
                  "lbl_rs_8000".tr,
                  style: CustomTextStyles.displayLargeGreen400,
                ),
                Spacer(),
                SizedBox(height: 16.v),
                _buildFrame(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 86.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder23,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 170.h,
            child: Text(
              "msg_your_biggest_income".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 13.v),
          CustomOutlinedButton(
            text: "lbl_salary".tr,
            margin: EdgeInsets.symmetric(horizontal: 21.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMagiconsGlyphFinanceSalary24x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            "lbl_rs_50002".tr,
            style: CustomTextStyles.displaySmallErrorContainer,
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
