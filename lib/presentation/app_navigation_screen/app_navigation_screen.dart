import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile / Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SplashScreen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OnboardingOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OnboardingTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OnboardingThree".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingthreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Otp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Email sent".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.emailSentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Setup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountSetupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pinScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Retype Pin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.retypePinScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wallet Setup - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.walletSetupTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Homepage - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Homepage-Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homepageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Expense".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.expenseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Income".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.incomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transfer".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.transferScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Statistics - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.statisticsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transaction Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Financial Report / Expense".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.financialReportExpenseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Financial Report / Income".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.financialReportIncomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Financial Report / Budget".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.financialReportBudgetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Financial Report / Quote".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.financialReportQuoteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Financial Report / Detail / Pie_Income_Category - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .financialReportDetailPieIncomeCategoryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Map View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Budget / Create_Budget".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.budgetCreateBudgetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Budget / Create_Budget One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.budgetCreateBudgetOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Budget / Detail_Budget".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.budgetDetailBudgetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Budget / Edit_Budget".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.budgetEditBudgetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings / Currency".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.settingsCurrencyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings / Language".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.settingsLanguageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings / Security".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.settingsSecurityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings / Notification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.settingsNotificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile / Customer Support".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileCustomerSupportScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
