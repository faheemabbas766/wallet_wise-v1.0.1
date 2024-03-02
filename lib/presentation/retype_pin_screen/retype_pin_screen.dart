import 'package:wallet_wise/widgets/custom_pin_code_text_field.dart';
import 'widgets/retypepin_item_widget.dart';
import 'models/retypepin_item_model.dart';
import 'models/retype_pin_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/retype_pin_provider.dart';

class RetypePinScreen extends StatefulWidget {
  const RetypePinScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RetypePinScreenState createState() => RetypePinScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RetypePinProvider(),
      child: RetypePinScreen(),
    );
  }
}

class RetypePinScreenState extends State<RetypePinScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Text(
                "msg_re_type_your_pin".tr,
                style: CustomTextStyles.titleLargeGray50,
              ),
              SizedBox(height: 88.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 90.h,
                  right: 89.h,
                ),
                child: Selector<RetypePinProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              Spacer(),
              _buildRetypePin(context),
              SizedBox(height: 15.v),
              _buildClose(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRetypePin(BuildContext context) {
    return Consumer<RetypePinProvider>(
      builder: (context, provider, child) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 91.v,
            crossAxisCount: 3,
            mainAxisSpacing: 26.h,
            crossAxisSpacing: 26.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.retypePinModelObj.retypepinItemList.length,
          itemBuilder: (context, index) {
            RetypepinItemModel model =
                provider.retypePinModelObj.retypepinItemList[index];
            return RetypepinItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildClose(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          right: 30.h,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 34.v,
              width: 51.h,
              margin: EdgeInsets.only(
                top: 29.v,
                bottom: 25.v,
              ),
            ),
            Spacer(
              flex: 54,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 35.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillYellow800.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder40,
              ),
              child: Text(
                "lbl_0".tr,
                style: theme.textTheme.displayMedium,
              ),
            ),
            Spacer(
              flex: 45,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 28.v,
              width: 43.h,
              margin: EdgeInsets.only(
                top: 32.v,
                bottom: 28.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
