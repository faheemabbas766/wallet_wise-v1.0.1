import 'package:wallet_wise/core/utils/validation_functions.dart';
import 'package:wallet_wise/widgets/custom_text_form_field.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: LoginScreen(),
    );
  }
}

class LoginScreenState extends State<LoginScreen> {
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
                theme.colorScheme.primary.withOpacity(0),
              ],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 13.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_wallet".tr,
                                style: CustomTextStyles.displaySmallffffffff,
                              ),
                              TextSpan(
                                text: "lbl_wise".tr,
                                style: CustomTextStyles.displaySmallffe9ab17,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 51.v),
                      Container(
                        width: 72.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_login".tr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineMediumWhiteA700,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_email".tr,
                          style: CustomTextStyles.titleMediumNotoSansWhiteA700,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Selector<LoginProvider, TextEditingController?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.emailController,
                          builder: (context, emailController, child) {
                            return CustomTextFormField(
                              controller: emailController,
                              hintText: "lbl_enter_email".tr,
                              hintStyle: CustomTextStyles
                                  .bodyMediumNunitoSansGray50001,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              },
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_password".tr,
                          style: CustomTextStyles.titleMediumNotoSansWhiteA700,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Consumer<LoginProvider>(
                          builder: (context, provider, child) {
                            return CustomTextFormField(
                              controller: provider.passwordController,
                              hintText: "msg_enter_your_password".tr,
                              hintStyle: CustomTextStyles
                                  .bodyMediumNunitoSansGray50001,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                onTap: () {
                                  provider.changePasswordVisibility();
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 13.v, 15.h, 12.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgEye,
                                    height: 14.v,
                                    width: 21.h,
                                  ),
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: 40.v,
                              ),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: provider.isShowPassword,
                              contentPadding: EdgeInsets.only(
                                left: 16.h,
                                top: 9.v,
                                bottom: 9.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillWhiteA,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "msg_forgot_your_password".tr,
                          style: CustomTextStyles.labelLargeNunitoSansWhiteA700,
                        ),
                      ),
                      SizedBox(height: 50.v),
                      CustomElevatedButton(
                        height: 40.v,
                        width: 200.h,
                        text: "lbl_login".tr,
                        buttonStyle: CustomButtonStyles.fillYellow,
                        buttonTextStyle:
                            CustomTextStyles.titleSmallPoppinsPrimary,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
