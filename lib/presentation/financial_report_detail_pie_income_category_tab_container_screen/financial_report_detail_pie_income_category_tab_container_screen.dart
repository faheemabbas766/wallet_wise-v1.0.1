import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_twelve.dart';
import 'package:wallet_wise/widgets/custom_drop_down.dart';
import 'models/financial_report_detail_pie_income_category_tab_container_model.dart';
import 'package:wallet_wise/widgets/custom_icon_button.dart';
import 'package:wallet_wise/presentation/financial_report_detail_pie_expense_category_page/financial_report_detail_pie_expense_category_page.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/financial_report_detail_pie_income_category_tab_container_provider.dart';

class FinancialReportDetailPieIncomeCategoryTabContainerScreen
    extends StatefulWidget {
  const FinancialReportDetailPieIncomeCategoryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FinancialReportDetailPieIncomeCategoryTabContainerScreenState createState() =>
      FinancialReportDetailPieIncomeCategoryTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          FinancialReportDetailPieIncomeCategoryTabContainerProvider(),
      child: FinancialReportDetailPieIncomeCategoryTabContainerScreen(),
    );
  }
}

class FinancialReportDetailPieIncomeCategoryTabContainerScreenState
    extends State<FinancialReportDetailPieIncomeCategoryTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFinancialReport(context),
              SizedBox(height: 58.v),
              _buildTabview(context),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyph,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwelve(
        text: "msg_financial_report".tr,
      ),
      styleType: Style.bgFill_2,
    );
  }

  /// Section Widget
  Widget _buildFinancialReport(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillWhiteA,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  child: Selector<
                      FinancialReportDetailPieIncomeCategoryTabContainerProvider,
                      FinancialReportDetailPieIncomeCategoryTabContainerModel?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider
                            .financialReportDetailPieIncomeCategoryTabContainerModelObj,
                    builder: (context,
                        financialReportDetailPieIncomeCategoryTabContainerModelObj,
                        child) {
                      return CustomDropDown(
                        width: 96.h,
                        hintText: "lbl_month".tr,
                        hintStyle: CustomTextStyles.titleSmallGray90002,
                        items:
                            financialReportDetailPieIncomeCategoryTabContainerModelObj
                                    ?.dropdownItemList ??
                                [],
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(8.h, 8.v, 4.h, 8.v),
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .imgMagiconsGlyphArrowArrowdown2Black90001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 40.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 11.v,
                          right: 16.h,
                          bottom: 11.v,
                        ),
                        borderDecoration: DropDownStyleHelper.outlineGrayTL20,
                        filled: false,
                        onChanged: (value) {
                          context
                              .read<
                                  FinancialReportDetailPieIncomeCategoryTabContainerProvider>()
                              .onSelected(value);
                        },
                      );
                    },
                  ),
                ),
                Container(
                  height: 41.v,
                  width: 42.h,
                  margin: EdgeInsets.only(top: 9.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLocationOnPrimary,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        alignment: Alignment.center,
                      ),
                      CustomIconButton(
                        height: 41.v,
                        width: 42.h,
                        alignment: Alignment.center,
                        child: CustomImageView(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          SizedBox(
            height: 192.adaptSize,
            width: 192.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 192.adaptSize,
                    width: 192.adaptSize,
                    child: CircularProgressIndicator(
                      value: 0.5,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_rs_8000".tr,
                    style: CustomTextStyles.headlineLargeInterBlack90001,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 56.v,
      width: 342.h,
      decoration: BoxDecoration(
        color: appTheme.yellow800.withOpacity(0.27),
        borderRadius: BorderRadius.circular(
          28.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        unselectedLabelColor: appTheme.gray50,
        tabs: [
          Tab(
            child: Text(
              "lbl_expense".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_income".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 270.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          FinancialReportDetailPieExpenseCategoryPage.builder(context),
          FinancialReportDetailPieExpenseCategoryPage.builder(context),
        ],
      ),
    );
  }
}
