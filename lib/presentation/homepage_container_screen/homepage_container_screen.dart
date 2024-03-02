import 'package:wallet_wise/presentation/homepage_page/homepage_page.dart';import 'package:wallet_wise/presentation/transaction_page/transaction_page.dart';import 'package:wallet_wise/presentation/budget_budget_page/budget_budget_page.dart';import 'package:wallet_wise/presentation/profile_page/profile_page.dart';import 'package:wallet_wise/widgets/custom_bottom_app_bar.dart';import 'package:wallet_wise/widgets/custom_floating_button.dart';import 'models/homepage_container_model.dart';import 'package:flutter/material.dart';import 'package:wallet_wise/core/app_export.dart';import 'provider/homepage_container_provider.dart';class HomepageContainerScreen extends StatefulWidget {const HomepageContainerScreen({Key? key}) : super(key: key);

@override HomepageContainerScreenState createState() =>  HomepageContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomepageContainerProvider(), child: HomepageContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomepageContainerScreenState extends State<HomepageContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homepagePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildEighteen(context), floatingActionButton: CustomFloatingButton(height: 68, width: 67, child: CustomImageView(imagePath: ImageConstant.imgAddOutline1, height: 34.0.v, width: 33.5.h)), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
Widget _buildEighteen(BuildContext context) { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {}); } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage.builder(context); case AppRoutes.transactionPage: return TransactionPage.builder(context); case AppRoutes.budgetBudgetPage: return BudgetBudgetPage.builder(context); case AppRoutes.profilePage: return ProfilePage.builder(context); default: return HomepagePage.builder(context);} } 
 }
