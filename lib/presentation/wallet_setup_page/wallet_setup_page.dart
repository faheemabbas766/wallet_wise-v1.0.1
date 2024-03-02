import 'package:wallet_wise/core/utils/validation_functions.dart';
import 'package:wallet_wise/widgets/custom_floating_text_field.dart';
import 'package:wallet_wise/widgets/custom_text_form_field.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/wallet_setup_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/wallet_setup_provider.dart';

// ignore_for_file: must_be_immutable
class WalletSetupPage extends StatefulWidget {
  const WalletSetupPage({Key? key})
      : super(
          key: key,
        );

  @override
  WalletSetupPageState createState() => WalletSetupPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WalletSetupProvider(),
      child: WalletSetupPage(),
    );
  }
}

class WalletSetupPageState extends State<WalletSetupPage>
    with AutomaticKeepAliveClientMixin<WalletSetupPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 199.v,
                        width: 293.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 18.h),
                                decoration:
                                    AppDecoration.gradientYellowToCyan.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: _buildDecorativeLine(context),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder23,
                                ),
                                child: _buildView(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 27.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "msg_add_your_debit_card".tr,
                            style: CustomTextStyles.titleMediumBlack90001,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 281.h,
                          margin: EdgeInsets.only(
                            left: 7.h,
                            right: 55.h,
                          ),
                          child: Text(
                            "msg_this_card_must_be".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildName(context),
                      SizedBox(height: 15.v),
                      _buildCardNumber1(context),
                      SizedBox(height: 12.v),
                      _buildEXPIRATIONMMYY1(context),
                      SizedBox(height: 15.v),
                      _buildFinish(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDecorativeLine(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Container(
            height: 162.v,
            width: 257.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDecorativeline,
                  height: 151.v,
                  width: 343.h,
                  alignment: Alignment.bottomRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDecorativeline,
                  height: 151.v,
                  width: 357.h,
                  alignment: Alignment.bottomLeft,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 163.v,
                    width: 257.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle,
                          height: 163.v,
                          width: 257.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 15.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgSettings,
                                        height: 12.v,
                                        width: 38.h,
                                        margin: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 4.v,
                                        ),
                                      ),
                                      Text(
                                        "lbl_mono".tr,
                                        style: CustomTextStyles
                                            .labelLargeIBMPlexMonoWhiteA700SemiBold,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 31.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 17.v,
                                    width: 23.h,
                                    margin: EdgeInsets.only(left: 13.h),
                                    decoration: AppDecoration.gradientGrayToGray
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgUser,
                                      height: 17.v,
                                      width: 23.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Text(
                                  "msg_6219_8610_2888".tr,
                                  style: CustomTextStyles
                                      .labelLargeIBMPlexMonoWhiteA700,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.h,
                                    right: 20.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text(
                                          "msg_s_mostafa_esmaeili"
                                              .tr
                                              .toUpperCase(),
                                          style: CustomTextStyles
                                              .bodySmallIBMPlexMonoWhiteA700,
                                        ),
                                      ),
                                      Text(
                                        "lbl_22_01".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .bodySmallIBMPlexMonoWhiteA700,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 185.v,
          width: 293.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 185.v,
                  width: 293.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      22.h,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(-0.18, 0.95),
                      end: Alignment(1.22, 0.27),
                      colors: [
                        appTheme.yellow800,
                        theme.colorScheme.primary,
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 444.v,
                  width: 373.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Opacity(
                        opacity: 0.28,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgShape,
                          height: 415.v,
                          width: 373.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 186.v,
                          width: 293.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle,
                                height: 186.v,
                                width: 293.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 9.h,
                                    top: 12.v,
                                    right: 6.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 12.h,
                                          right: 7.h,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 34.h,
                                              child: Text(
                                                "lbl_debit_card".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelMediumIBMPlexMonoWhiteA700,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 141.h,
                                                top: 8.v,
                                                bottom: 2.v,
                                              ),
                                              child: Text(
                                                "lbl_walletwise".tr,
                                                style: CustomTextStyles
                                                    .labelLargeIBMPlexMonoWhiteA700SemiBold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 32.v),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 20.v,
                                          width: 26.h,
                                          margin: EdgeInsets.only(left: 14.h),
                                          decoration: AppDecoration
                                              .gradientGrayToGray
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder3,
                                          ),
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 20.v,
                                            width: 26.h,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 26.v),
                                      Text(
                                        "msg_6219_8610_2888".tr,
                                        style: CustomTextStyles
                                            .labelLargeIBMPlexMonoWhiteA700Bold,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.v),
                                              child: Text(
                                                "lbl_muhammad_saad"
                                                    .tr
                                                    .toUpperCase(),
                                                style: CustomTextStyles
                                                    .bodyMediumIBMPlexMonoWhiteA700,
                                              ),
                                            ),
                                            Text(
                                              "lbl_01_01".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .bodyMediumIBMPlexMonoWhiteA700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Selector<WalletSetupProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.nameController,
        builder: (context, nameController, child) {
          return CustomFloatingTextField(
            controller: nameController,
            labelText: "lbl_name_on_card".tr,
            labelStyle: CustomTextStyles.titleSmallYellow800_1,
            hintText: "lbl_name_on_card".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Selector<WalletSetupProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.cardNumberController,
      builder: (context, cardNumberController, child) {
        return CustomTextFormField(
          width: 198.h,
          controller: cardNumberController,
          hintText: "msg_debit_card_number".tr,
          hintStyle: CustomTextStyles.bodySmallInterBluegray40001,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
          contentPadding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 18.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCVC(BuildContext context) {
    return Selector<WalletSetupProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.cVCController,
      builder: (context, cVCController, child) {
        return CustomTextFormField(
          width: 119.h,
          controller: cVCController,
          hintText: "lbl_cvc".tr,
          hintStyle: CustomTextStyles.bodySmallInterBluegray40001,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 18.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCardNumber1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCardNumber(context),
          _buildCVC(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEXPIRATIONMMYY(BuildContext context) {
    return Selector<WalletSetupProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.eXPIRATIONMMYYController,
      builder: (context, eXPIRATIONMMYYController, child) {
        return CustomTextFormField(
          width: 198.h,
          controller: eXPIRATIONMMYYController,
          hintText: "msg_expiration_mm_yy".tr,
          hintStyle: CustomTextStyles.bodySmallInterBluegray40001,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 18.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZIP(BuildContext context) {
    return Selector<WalletSetupProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.zIPController,
      builder: (context, zIPController, child) {
        return CustomTextFormField(
          width: 119.h,
          controller: zIPController,
          hintText: "lbl_zip".tr,
          hintStyle: CustomTextStyles.bodySmallInterBluegray40001,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 18.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEXPIRATIONMMYY1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildEXPIRATIONMMYY(context),
          _buildZIP(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFinish(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_finish".tr,
    );
  }
}
