import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/core/utils/validation_functions.dart';
import 'package:wallet_wise/widgets/custom_text_form_field.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/forgot_password_provider.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordProvider(),
      child: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.yellow800,
                theme.colorScheme.onErrorContainer,
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
                  horizontal: 7.h,
                  vertical: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 247.h,
                      margin: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "msg_forgot_password".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      width: 306.h,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        right: 40.h,
                      ),
                      child: Text(
                        "msg_don_t_worry_it".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeNotoSansBlack90001
                            .copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_email".tr,
                        style: CustomTextStyles.titleMediumNotoSansBlack90001,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Selector<ForgotPasswordProvider, TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.emailController,
                      builder: (context, emailController, child) {
                        return CustomTextFormField(
                          controller: emailController,
                          hintText: "lbl_enter_email".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          borderDecoration: TextFormFieldStyleHelper.fillYellow,
                          fillColor: appTheme.yellow800.withOpacity(0.57),
                        );
                      },
                    ),
                    SizedBox(height: 55.v),
                    CustomElevatedButton(
                      height: 49.v,
                      width: 244.h,
                      text: "lbl_continue".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallPoppinsWhiteA700,
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 4.v),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "msg_remember_your_password".tr,
                              style:
                                  CustomTextStyles.bodyMediumNotoSansBlack90001,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_login".tr,
                              style: CustomTextStyles
                                  .titleSmallNotoSansYellow800SemiBold
                                  .copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Container(
        height: 14.adaptSize,
        width: 14.adaptSize,
        margin: EdgeInsets.fromLTRB(21.h, 21.v, 340.h, 21.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorPrimary,
              height: 3.v,
              width: 14.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                top: 7.v,
                bottom: 4.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorPrimary14x7,
              height: 14.v,
              width: 7.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(right: 7.h),
            ),
          ],
        ),
      ),
    );
  }
}
