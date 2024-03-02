import 'package:wallet_wise/widgets/custom_drop_down.dart';
import 'models/statistics_model.dart';
import 'widgets/statistics_item_widget.dart';
import 'models/statistics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/statistics_provider.dart';

// ignore_for_file: must_be_immutable
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key})
      : super(
          key: key,
        );

  @override
  StatisticsPageState createState() => StatisticsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StatisticsProvider(),
      child: StatisticsPage(),
    );
  }
}

class StatisticsPageState extends State<StatisticsPage>
    with AutomaticKeepAliveClientMixin<StatisticsPage> {
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
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLocationOn,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 6.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child:
                                Selector<StatisticsProvider, StatisticsModel?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.statisticsModelObj,
                              builder: (context, statisticsModelObj, child) {
                                return CustomDropDown(
                                  width: 116.h,
                                  icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.h, 10.v, 14.h, 10.v),
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowdownYellow800,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                    ),
                                  ),
                                  hintText: "lbl_expense".tr,
                                  items: statisticsModelObj?.dropdownItemList ??
                                      [],
                                  contentPadding: EdgeInsets.only(
                                    left: 14.h,
                                    top: 11.v,
                                    bottom: 11.v,
                                  ),
                                  onChanged: (value) {
                                    context
                                        .read<StatisticsProvider>()
                                        .onSelected(value);
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector2,
                    height: 144.v,
                    width: 375.h,
                  ),
                  SizedBox(height: 15.v),
                  _buildJan(context),
                  SizedBox(height: 46.v),
                  _buildFrameEight(context),
                  SizedBox(height: 29.v),
                  _buildStatistics(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJan(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_jan".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_feb".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_mar".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_apr".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_may".tr,
              style: CustomTextStyles.titleSmallYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_jun".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_jul".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_aug".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_sep".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_oct".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_nov".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
            Spacer(
              flex: 9,
            ),
            Text(
              "lbl_des".tr,
              style: CustomTextStyles.bodyMediumYellow800,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_top_spending".tr,
              style: CustomTextStyles.titleMediumYellow800SemiBold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBxSort1,
            height: 21.adaptSize,
            width: 21.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatistics(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Consumer<StatisticsProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 19.v,
              );
            },
            itemCount: provider.statisticsModelObj.statisticsItemList.length,
            itemBuilder: (context, index) {
              StatisticsItemModel model =
                  provider.statisticsModelObj.statisticsItemList[index];
              return StatisticsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
