import 'package:wallet_wise/widgets/custom_drop_down.dart';
import 'models/financial_report_detail_pie_expense_category_model.dart';
import 'package:wallet_wise/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/financial_report_detail_pie_expense_category_provider.dart';

// ignore_for_file: must_be_immutable
class FinancialReportDetailPieExpenseCategoryPage extends StatefulWidget {
  const FinancialReportDetailPieExpenseCategoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  FinancialReportDetailPieExpenseCategoryPageState createState() =>
      FinancialReportDetailPieExpenseCategoryPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FinancialReportDetailPieExpenseCategoryProvider(),
      child: FinancialReportDetailPieExpenseCategoryPage(),
    );
  }
}

class FinancialReportDetailPieExpenseCategoryPageState
    extends State<FinancialReportDetailPieExpenseCategoryPage>
    with
        AutomaticKeepAliveClientMixin<
            FinancialReportDetailPieExpenseCategoryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.fillWhiteA,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Selector<
                            FinancialReportDetailPieExpenseCategoryProvider,
                            FinancialReportDetailPieExpenseCategoryModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider
                                  .financialReportDetailPieExpenseCategoryModelObj,
                          builder: (context,
                              financialReportDetailPieExpenseCategoryModelObj,
                              child) {
                            return CustomDropDown(
                              width: 115.h,
                              hintText: "lbl_category".tr,
                              hintStyle: CustomTextStyles.titleSmallGray90002,
                              items:
                                  financialReportDetailPieExpenseCategoryModelObj
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
                              borderDecoration:
                                  DropDownStyleHelper.outlineGrayTL20,
                              filled: false,
                              onChanged: (value) {
                                context
                                    .read<
                                        FinancialReportDetailPieExpenseCategoryProvider>()
                                    .onSelected(value);
                              },
                            );
                          },
                        ),
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .imgMagiconsGlyphUserBlack9000140x40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 105.h,
                              padding: EdgeInsets.symmetric(vertical: 6.v),
                              decoration:
                                  AppDecoration.outlineGray100012.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 2.v),
                                    decoration: BoxDecoration(
                                      color: appTheme.amberA700,
                                      borderRadius: BorderRadius.circular(
                                        7.h,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "lbl_shopping".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray90002,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "lbl_rs_12000".tr,
                                style: CustomTextStyles.headlineSmallRed500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgProgressBar,
                          height: 1.v,
                          width: 343.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 119.h,
                          padding: EdgeInsets.symmetric(vertical: 6.v),
                          decoration: AppDecoration.outlineGray100012.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 2.v),
                                decoration: BoxDecoration(
                                  color: appTheme.deepPurpleA200,
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text(
                                  "lbl_subcription".tr,
                                  style: CustomTextStyles.titleSmallGray90002,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Text(
                            "lbl_rs_80".tr,
                            style: CustomTextStyles.headlineSmallRed500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 48.h,
                      ),
                      child: Container(
                        height: 12.v,
                        width: 311.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray10001,
                        ),
                        child: ClipRRect(
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: appTheme.gray10001,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.deepPurpleA200,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 75.h,
                              padding: EdgeInsets.symmetric(vertical: 7.v),
                              decoration:
                                  AppDecoration.outlineGray100012.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 1.v),
                                    decoration: BoxDecoration(
                                      color: appTheme.red500,
                                      borderRadius: BorderRadius.circular(
                                        7.h,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "lbl_food".tr,
                                    style: CustomTextStyles.titleSmallGray90002,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "lbl_rs_3200".tr,
                                style: CustomTextStyles.headlineSmallRed500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgProgressBarGray10001,
                          height: 1.v,
                          width: 343.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
