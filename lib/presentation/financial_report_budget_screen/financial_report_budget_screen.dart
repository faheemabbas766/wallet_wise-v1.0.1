import 'package:wallet_wise/widgets/custom_pin_code_text_field.dart';
import 'package:wallet_wise/widgets/custom_outlined_button.dart';
import 'models/financial_report_budget_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/financial_report_budget_provider.dart';

class FinancialReportBudgetScreen extends StatefulWidget {
  const FinancialReportBudgetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FinancialReportBudgetScreenState createState() =>
      FinancialReportBudgetScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FinancialReportBudgetProvider(),
      child: FinancialReportBudgetScreen(),
    );
  }
}

class FinancialReportBudgetScreenState
    extends State<FinancialReportBudgetScreen> {
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
                Selector<FinancialReportBudgetProvider, TextEditingController?>(
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
                Spacer(
                  flex: 34,
                ),
                Container(
                  width: 301.h,
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_2".tr,
                          style: CustomTextStyles.headlineLargeInterffff5c5c,
                        ),
                        TextSpan(
                          text: "lbl_out_of".tr,
                          style: CustomTextStyles.headlineLargeInterffffffff,
                        ),
                        TextSpan(
                          text: "msg_12_budgets_exceeds".tr,
                          style: CustomTextStyles.headlineLargeInterffff5c5c,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutlinedButton(
                        width: 156.h,
                        text: "lbl_shopping".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMagiconsGlyphEcommerce,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                      ),
                      CustomOutlinedButton(
                        width: 127.h,
                        text: "lbl_food".tr,
                        margin: EdgeInsets.only(left: 11.h),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 12.h),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgMagiconsGlyphTravelRestaurant,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 65,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
