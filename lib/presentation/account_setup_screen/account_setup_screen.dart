import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'models/account_setup_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/account_setup_provider.dart';

class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AccountSetupScreenState createState() => AccountSetupScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccountSetupProvider(),
      child: AccountSetupScreen(),
    );
  }
}

class AccountSetupScreenState extends State<AccountSetupScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.yellow800,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 67.v,
            right: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 274.h,
                margin: EdgeInsets.only(right: 68.h),
                child: Text(
                  "msg_let_s_setup_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.displaySmallGray90002,
                ),
              ),
              SizedBox(height: 36.v),
              Container(
                width: 272.h,
                margin: EdgeInsets.only(right: 68.h),
                child: Text(
                  "msg_account_can_be_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBluegray900.copyWith(
                    height: 1.29,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildLetsGo(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLetsGo(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_let_s_go".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 50.v,
      ),
    );
  }
}
