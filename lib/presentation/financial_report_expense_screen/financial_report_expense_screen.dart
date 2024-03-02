import 'package:wallet_wise/widgets/custom_pin_code_text_field.dart';
import 'package:wallet_wise/widgets/custom_outlined_button.dart';
import 'models/financial_report_expense_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/financial_report_expense_provider.dart';

class FinancialReportExpenseScreen extends StatefulWidget {
  const FinancialReportExpenseScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FinancialReportExpenseScreenState createState() =>
      FinancialReportExpenseScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FinancialReportExpenseProvider(),
      child: FinancialReportExpenseScreen(),
    );
  }
}

class FinancialReportExpenseScreenState
    extends State<FinancialReportExpenseScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.gradientPrimaryToLime,
              child: Column(
                children: [
                  Selector<FinancialReportExpenseProvider,
                      TextEditingController?>(
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
                  SizedBox(height: 91.v),
                  Text(
                    "lbl_you_spend".tr,
                    style: CustomTextStyles.headlineLargeInterBold,
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    "lbl_rs_2024".tr,
                    style: CustomTextStyles.displayLargeRedA200,
                  ),
                  SizedBox(height: 130.v),
                  _buildFrame(context),
                  SizedBox(height: 19.v),
                ],
              ),
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
        horizontal: 39.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder23,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 262.h,
            child: Text(
              "msg_your_biggest_spending".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 13.v),
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
          SizedBox(height: 7.v),
          Text(
            "lbl_rs_120002".tr,
            style: CustomTextStyles.displaySmallRedA700,
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
