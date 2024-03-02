import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/email_sent_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/email_sent_provider.dart';

class EmailSentScreen extends StatefulWidget {
  const EmailSentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmailSentScreenState createState() => EmailSentScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmailSentProvider(),
      child: EmailSentScreen(),
    );
  }
}

class EmailSentScreenState extends State<EmailSentScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 90.v),
              CustomImageView(
                imagePath: ImageConstant.imgIlustration,
                height: 200.v,
                width: 300.h,
                radius: BorderRadius.circular(
                  40.h,
                ),
              ),
              SizedBox(height: 67.v),
              Text(
                "msg_your_email_is_on".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 290.h,
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 39.h,
                ),
                child: Text(
                  "msg_check_your_email".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(AppRoutes.resetPasswordScreen);
                },
                text: "lbl_continue".tr,
                margin: EdgeInsets.only(left: 8.h),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(AppRoutes.loginScreen);
                },
                text: "lbl_back_to_login".tr,
                margin: EdgeInsets.only(left: 8.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
