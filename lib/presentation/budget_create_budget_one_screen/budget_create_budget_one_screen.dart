import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_eleven.dart';
import 'package:wallet_wise/widgets/custom_drop_down.dart';
import 'models/budget_create_budget_one_model.dart';
import 'package:wallet_wise/widgets/custom_switch.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/budget_create_budget_one_provider.dart';

class BudgetCreateBudgetOneScreen extends StatefulWidget {
  const BudgetCreateBudgetOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BudgetCreateBudgetOneScreenState createState() =>
      BudgetCreateBudgetOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BudgetCreateBudgetOneProvider(),
      child: BudgetCreateBudgetOneScreen(),
    );
  }
}

class BudgetCreateBudgetOneScreenState
    extends State<BudgetCreateBudgetOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Opacity(
                opacity: 0.64,
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Text(
                    "msg_how_much_do_yo_want".tr,
                    style: CustomTextStyles.titleMediumYellow800SemiBold18,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_rs2".tr,
                  style: theme.textTheme.displayLarge,
                ),
              ),
              SizedBox(height: 10.v),
              _buildFrame(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsOutlin,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleEleven(
        text: "lbl_create_budget".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Selector<BudgetCreateBudgetOneProvider, BudgetCreateBudgetOneModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.budgetCreateBudgetOneModelObj,
            builder: (context, budgetCreateBudgetOneModelObj, child) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMagiconsGlyphArrowArrowdown2,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                ),
                hintText: "lbl_shopping".tr,
                items: budgetCreateBudgetOneModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context
                      .read<BudgetCreateBudgetOneProvider>()
                      .onSelected(value);
                },
              );
            },
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7.v),
            decoration: AppDecoration.fillWhiteA,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_receive_alert".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 3.v),
                      SizedBox(
                        width: 183.h,
                        child: Text(
                          "msg_receive_alert_when".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!.copyWith(
                            height: 1.23,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Selector<BudgetCreateBudgetOneProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch,
                  builder: (context, isSelectedSwitch, child) {
                    return CustomSwitch(
                      margin: EdgeInsets.symmetric(vertical: 18.v),
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<BudgetCreateBudgetOneProvider>()
                            .changeSwitchBox1(value);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Slider(
            value: 0.0,
            min: 0.0,
            max: 100.0,
            onChanged: (value) {},
          ),
          SizedBox(height: 29.v),
          CustomElevatedButton(
            text: "lbl_continue".tr,
            buttonTextStyle: CustomTextStyles.titleMediumYellow800,
          ),
          SizedBox(height: 34.v),
        ],
      ),
    );
  }
}
