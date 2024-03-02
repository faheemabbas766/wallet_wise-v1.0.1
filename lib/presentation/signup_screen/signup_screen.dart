import 'package:wallet_wise/core/utils/validation_functions.dart';
import 'package:wallet_wise/widgets/custom_text_form_field.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/signup_provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupScreenState createState() => SignupScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupProvider(),
      child: SignupScreen(),
    );
  }
}

class SignupScreenState extends State<SignupScreen> {
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 25.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 87.v),
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
                    SizedBox(height: 28.v),
                    SizedBox(
                      width: 156.h,
                      child: Text(
                        "lbl_get_started".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.headlineMediumWhiteA700,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "lbl_name".tr,
                        style: CustomTextStyles.titleMediumNotoSansWhiteA700,
                      ),
                    ),
                    _buildName(context),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "lbl_email".tr,
                        style: CustomTextStyles.titleMediumNotoSansWhiteA700,
                      ),
                    ),
                    _buildEmail(context),
                    SizedBox(height: 10.v),
                    _buildFour(context),
                    SizedBox(height: 10.v),
                    _buildFour1(context),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "lbl_city".tr,
                        style: CustomTextStyles.titleMediumNotoSansWhiteA700,
                      ),
                    ),
                    _buildCity(context),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "lbl_password".tr,
                        style: CustomTextStyles.titleMediumNotoSansWhiteA700,
                      ),
                    ),
                    _buildPassword(context),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_password_must_be".tr,
                        style: CustomTextStyles.labelLargeNunitoSansWhiteA700,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    _buildSignUp(context),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "msg_already_have_an".tr,
                            style: CustomTextStyles.bodyMediumNotoSansWhiteA700,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "lbl_log_in2".tr,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<SignupProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_enter_name".tr,
          hintStyle: CustomTextStyles.bodyMediumNunitoSansGray50001,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<SignupProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.emailController,
      builder: (context, emailController, child) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_enter_email".tr,
          hintStyle: CustomTextStyles.bodyMediumNunitoSansGray50001,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return SizedBox(
      height: 56.v,
      width: 351.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 61.h,
              margin: EdgeInsets.only(left: 3.h),
              child: Text(
                "lbl_contact_number".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumNotoSansWhiteA700,
              ),
            ),
          ),
          Selector<SignupProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.threeController,
            builder: (context, threeController, child) {
              return CustomTextFormField(
                width: 351.h,
                controller: threeController,
                hintText: "msg_enter_contact_number".tr,
                hintStyle: CustomTextStyles.bodyMediumNunitoSansGray50001,
                textInputType: TextInputType.number,
                alignment: Alignment.bottomCenter,
                validator: (value) {
                  if (!isNumeric(value)) {
                    return "err_msg_please_enter_valid_number".tr;
                  }
                  return null;
                },
                borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFour1(BuildContext context) {
    return SizedBox(
      height: 56.v,
      width: 351.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 38.h,
              margin: EdgeInsets.only(left: 3.h),
              child: Text(
                "lbl_country".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumNotoSansWhiteA700,
              ),
            ),
          ),
          Selector<SignupProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.countryController,
            builder: (context, countryController, child) {
              return CustomTextFormField(
                width: 351.h,
                controller: countryController,
                hintText: "lbl_select_country".tr,
                hintStyle: CustomTextStyles.bodyMediumNunitoSansGray50001,
                alignment: Alignment.bottomCenter,
                borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Selector<SignupProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.cityController,
      builder: (context, cityController, child) {
        return CustomTextFormField(
          controller: cityController,
          hintText: "lbl_select_city".tr,
          hintStyle: CustomTextStyles.bodyMediumNunitoSansGray50001,
          borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<SignupProvider>(
      builder: (context, provider, child) {
        return CustomTextFormField(
          controller: provider.passwordController,
          hintText: "msg_enter_your_password".tr,
          hintStyle: CustomTextStyles.bodyMediumNunitoSansGray50001,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
            onTap: () {
              provider.changePasswordVisibility();
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 10.v, 7.h, 9.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 14.v,
                width: 21.h,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 35.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 7.v,
            bottom: 7.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      height: 34.v,
      width: 179.h,
      text: "lbl_sign_up".tr,
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimary,
      alignment: Alignment.center,
    );
  }
}
