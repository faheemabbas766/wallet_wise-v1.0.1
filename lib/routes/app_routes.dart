import 'package:flutter/material.dart';
import '../presentation/profile_settings_screen/profile_settings_screen.dart';
import '../presentation/splashscreen_screen/splashscreen_screen.dart';
import '../presentation/onboardingone_screen/onboardingone_screen.dart';
import '../presentation/onboardingtwo_screen/onboardingtwo_screen.dart';
import '../presentation/onboardingthree_screen/onboardingthree_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/otp_screen/otp_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/email_sent_screen/email_sent_screen.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/account_setup_screen/account_setup_screen.dart';
import '../presentation/pin_screen/pin_screen.dart';
import '../presentation/retype_pin_screen/retype_pin_screen.dart';
import '../presentation/wallet_setup_tab_container_screen/wallet_setup_tab_container_screen.dart';
import '../presentation/homepage_container_screen/homepage_container_screen.dart';
import '../presentation/homepage_two_screen/homepage_two_screen.dart';
import '../presentation/expense_screen/expense_screen.dart';
import '../presentation/income_screen/income_screen.dart';
import '../presentation/transfer_screen/transfer_screen.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/statistics_tab_container_screen/statistics_tab_container_screen.dart';
import '../presentation/transaction_details_screen/transaction_details_screen.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/financial_report_expense_screen/financial_report_expense_screen.dart';
import '../presentation/financial_report_income_screen/financial_report_income_screen.dart';
import '../presentation/financial_report_budget_screen/financial_report_budget_screen.dart';
import '../presentation/financial_report_quote_screen/financial_report_quote_screen.dart';
import '../presentation/financial_report_detail_pie_income_category_tab_container_screen/financial_report_detail_pie_income_category_tab_container_screen.dart';
import '../presentation/map_view_screen/map_view_screen.dart';
import '../presentation/budget_create_budget_screen/budget_create_budget_screen.dart';
import '../presentation/budget_create_budget_one_screen/budget_create_budget_one_screen.dart';
import '../presentation/budget_detail_budget_screen/budget_detail_budget_screen.dart';
import '../presentation/budget_edit_budget_screen/budget_edit_budget_screen.dart';
import '../presentation/settings_currency_screen/settings_currency_screen.dart';
import '../presentation/settings_language_screen/settings_language_screen.dart';
import '../presentation/settings_security_screen/settings_security_screen.dart';
import '../presentation/settings_notification_screen/settings_notification_screen.dart';
import '../presentation/profile_customer_support_screen/profile_customer_support_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String profileSettingsScreen = '/profile_settings_screen';

  static const String splashscreenScreen = '/splashscreen_screen';

  static const String onboardingoneScreen = '/onboardingone_screen';

  static const String onboardingtwoScreen = '/onboardingtwo_screen';

  static const String onboardingthreeScreen = '/onboardingthree_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String otpScreen = '/otp_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String emailSentScreen = '/email_sent_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String accountSetupScreen = '/account_setup_screen';

  static const String pinScreen = '/pin_screen';

  static const String retypePinScreen = '/retype_pin_screen';

  static const String walletSetupPage = '/wallet_setup_page';

  static const String walletSetupTabContainerScreen =
      '/wallet_setup_tab_container_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String homepageTwoScreen = '/homepage_two_screen';

  static const String expenseScreen = '/expense_screen';

  static const String incomeScreen = '/income_screen';

  static const String transferScreen = '/transfer_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String statisticsPage = '/statistics_page';

  static const String statisticsTabContainerScreen =
      '/statistics_tab_container_screen';

  static const String transactionDetailsScreen = '/transaction_details_screen';

  static const String chatScreen = '/chat_screen';

  static const String transactionPage = '/transaction_page';

  static const String financialReportExpenseScreen =
      '/financial_report_expense_screen';

  static const String financialReportIncomeScreen =
      '/financial_report_income_screen';

  static const String financialReportBudgetScreen =
      '/financial_report_budget_screen';

  static const String financialReportQuoteScreen =
      '/financial_report_quote_screen';

  static const String financialReportDetailPieExpenseCategoryPage =
      '/financial_report_detail_pie_expense_category_page';

  static const String financialReportDetailPieIncomeCategoryPage =
      '/financial_report_detail_pie_income_category_page';

  static const String financialReportDetailPieIncomeCategoryTabContainerScreen =
      '/financial_report_detail_pie_income_category_tab_container_screen';

  static const String mapViewScreen = '/map_view_screen';

  static const String budgetCreateBudgetScreen = '/budget_create_budget_screen';

  static const String budgetCreateBudgetOneScreen =
      '/budget_create_budget_one_screen';

  static const String budgetBudgetPage = '/budget_budget_page';

  static const String budgetDetailBudgetScreen = '/budget_detail_budget_screen';

  static const String budgetEditBudgetScreen = '/budget_edit_budget_screen';

  static const String profilePage = '/profile_page';

  static const String settingsCurrencyScreen = '/settings_currency_screen';

  static const String settingsLanguageScreen = '/settings_language_screen';

  static const String settingsSecurityScreen = '/settings_security_screen';

  static const String settingsNotificationScreen =
      '/settings_notification_screen';

  static const String profileCustomerSupportScreen =
      '/profile_customer_support_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        profileSettingsScreen: ProfileSettingsScreen.builder,
        splashscreenScreen: SplashscreenScreen.builder,
        onboardingoneScreen: OnboardingoneScreen.builder,
        onboardingtwoScreen: OnboardingtwoScreen.builder,
        onboardingthreeScreen: OnboardingthreeScreen.builder,
        loginScreen: LoginScreen.builder,
        signupScreen: SignupScreen.builder,
        otpScreen: OtpScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        emailSentScreen: EmailSentScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        accountSetupScreen: AccountSetupScreen.builder,
        pinScreen: PinScreen.builder,
        retypePinScreen: RetypePinScreen.builder,
        walletSetupTabContainerScreen: WalletSetupTabContainerScreen.builder,
        homepageContainerScreen: HomepageContainerScreen.builder,
        homepageTwoScreen: HomepageTwoScreen.builder,
        expenseScreen: ExpenseScreen.builder,
        incomeScreen: IncomeScreen.builder,
        transferScreen: TransferScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        statisticsTabContainerScreen: StatisticsTabContainerScreen.builder,
        transactionDetailsScreen: TransactionDetailsScreen.builder,
        chatScreen: ChatScreen.builder,
        financialReportExpenseScreen: FinancialReportExpenseScreen.builder,
        financialReportIncomeScreen: FinancialReportIncomeScreen.builder,
        financialReportBudgetScreen: FinancialReportBudgetScreen.builder,
        financialReportQuoteScreen: FinancialReportQuoteScreen.builder,
        financialReportDetailPieIncomeCategoryTabContainerScreen:
            FinancialReportDetailPieIncomeCategoryTabContainerScreen.builder,
        mapViewScreen: MapViewScreen.builder,
        budgetCreateBudgetScreen: BudgetCreateBudgetScreen.builder,
        budgetCreateBudgetOneScreen: BudgetCreateBudgetOneScreen.builder,
        budgetDetailBudgetScreen: BudgetDetailBudgetScreen.builder,
        budgetEditBudgetScreen: BudgetEditBudgetScreen.builder,
        settingsCurrencyScreen: SettingsCurrencyScreen.builder,
        settingsLanguageScreen: SettingsLanguageScreen.builder,
        settingsSecurityScreen: SettingsSecurityScreen.builder,
        settingsNotificationScreen: SettingsNotificationScreen.builder,
        profileCustomerSupportScreen: ProfileCustomerSupportScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ProfileSettingsScreen.builder
      };
}
