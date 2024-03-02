import 'package:wallet_wise/widgets/custom_text_form_field.dart';
import 'package:wallet_wise/core/utils/validation_functions.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResetPasswordProvider(),
      child: ResetPasswordScreen(),
    );
  }
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.yellow800,
                appTheme.gray900,
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 69.v,
                  right: 13.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 232.h,
                      margin: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_reset_password".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Container(
                      width: 337.h,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        right: 3.h,
                      ),
                      child: Text(
                        "msg_please_type_a_new".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeNotoSansBlack90001
                            .copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                    SizedBox(height: 34.v),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_new_password".tr,
                        style: CustomTextStyles.titleMediumNotoSansBlack90001,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Consumer<ResetPasswordProvider>(
                        builder: (context, provider, child) {
                          return CustomTextFormField(
                            controller: provider.newpasswordController,
                            hintText: "lbl".tr,
                            hintStyle:
                                CustomTextStyles.bodyLargeNunitoSansPrimary,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                              onTap: () {
                                provider.changePasswordVisibility();
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 13.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEyePrimary,
                                  height: 14.v,
                                  width: 21.h,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 42.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: provider.isShowPassword,
                            contentPadding: EdgeInsets.only(
                              left: 16.h,
                              top: 8.v,
                              bottom: 8.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillYellow,
                            fillColor: appTheme.yellow800.withOpacity(0.57),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "msg_confirm_password".tr,
                        style: CustomTextStyles.titleMediumNotoSansBlack90001,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Selector<ResetPasswordProvider,
                          TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.confirmpasswordController,
                        builder: (context, confirmpasswordController, child) {
                          return CustomTextFormField(
                            controller: confirmpasswordController,
                            hintText: "msg_re_enter_password".tr,
                            hintStyle:
                                CustomTextStyles.bodyMediumNunitoSansPrimary,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillYellow,
                            fillColor: appTheme.yellow800.withOpacity(0.57),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 36.v),
                    CustomElevatedButton(
                      height: 40.v,
                      width: 200.h,
                      text: "lbl_reset_password2".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallPoppinsWhiteA700,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 12.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 45.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "msg_don_t_want_to_reset".tr,
                              style:
                                  CustomTextStyles.bodyMediumNotoSansBlack90001,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "lbl_login".tr,
                                style: CustomTextStyles
                                    .titleSmallNotoSansYellow800
                                    .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
