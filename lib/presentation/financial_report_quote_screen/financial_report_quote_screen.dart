import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/financial_report_quote_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/financial_report_quote_provider.dart';

class FinancialReportQuoteScreen extends StatefulWidget {
  const FinancialReportQuoteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FinancialReportQuoteScreenState createState() =>
      FinancialReportQuoteScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FinancialReportQuoteProvider(),
      child: FinancialReportQuoteScreen(),
    );
  }
}

class FinancialReportQuoteScreenState
    extends State<FinancialReportQuoteScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 1.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 4,
                    effect: ScrollingDotsEffect(
                      spacing: 2.25,
                      activeDotColor: appTheme.whiteA700,
                      dotColor: appTheme.whiteA700.withOpacity(0.24),
                      dotHeight: 4.v,
                      dotWidth: 85.h,
                    ),
                  ),
                ),
                Spacer(
                  flex: 26,
                ),
                Container(
                  width: 328.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    right: 18.h,
                  ),
                  child: Text(
                    "msg_financial_freedom".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineLargeInterBold.copyWith(
                      height: 1.22,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "msg_robert_kiyosaki".tr,
                    style: CustomTextStyles.headlineSmallWhiteA700_2,
                  ),
                ),
                Spacer(
                  flex: 73,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSeeTheFullDetail(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeeTheFullDetail(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_see_the_full_detail".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 40.v,
      ),
      buttonStyle: CustomButtonStyles.fillWhiteA,
      buttonTextStyle: CustomTextStyles.titleMediumPrimarySemiBold18,
    );
  }
}
