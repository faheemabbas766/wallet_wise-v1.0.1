import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_title_dropdown.dart';
import 'models/transaction_model.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'widgets/transaction_item_widget.dart';
import 'models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/transaction_provider.dart';

// ignore_for_file: must_be_immutable
class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionPageState createState() => TransactionPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionProvider(),
      child: TransactionPage(),
    );
  }
}

class TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    super.initState();
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
              SizedBox(height: 8.v),
              _buildFrameSeventySix(context),
              SizedBox(height: 8.v),
              _buildTransaction(context),
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
      title: Selector<TransactionProvider, TransactionModel?>(
        selector: (
          context,
          provider,
        ) =>
            provider.transactionModelObj,
        builder: (context, transactionModelObj, child) {
          return AppbarTitleDropdown(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_month".tr,
            items: transactionModelObj?.dropdownItemList ?? [],
            onTap: (value) {
              context.read<TransactionProvider>().onSelected(value);
            },
          );
        },
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgMagiconsGlyphUserBlack90001,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
        ),
      ],
      styleType: Style.bgFill_2,
    );
  }

  /// Section Widget
  Widget _buildFrameSeventySix(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillYellow8003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 7.v,
              bottom: 4.v,
            ),
            child: Text(
              "msg_see_your_financial".tr,
              style: CustomTextStyles.bodyLargePrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMagiconsGlyphBlack90001,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransaction(BuildContext context) {
    return Consumer<TransactionProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: provider.transactionModelObj.transactionItemList.length,
          itemBuilder: (context, index) {
            TransactionItemModel model =
                provider.transactionModelObj.transactionItemList[index];
            return TransactionItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
