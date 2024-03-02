import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'package:wallet_wise/presentation/pin_screen/provider/pin_provider.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'widgets/pin_item_widget.dart';
import 'models/pin_item_model.dart';
class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  PinScreenState createState() => PinScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PinProvider(),
      child: PinScreen(),
    );
  }
}

class PinScreenState extends State<PinScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NextScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 22.v),
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Text(
                "msg_let_s_setup_your2".tr,
                style: CustomTextStyles.titleLargeGray50,
              ),
              SizedBox(height: 57.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Selector<PinProvider, TextEditingController?>(
                  selector: (context, provider) => provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        Provider.of<PinProvider>(context, listen: false)
                            .otpController.text += value;
                      },
                    );
                  },
                ),
              ),
              Spacer(),
              _buildPin(context),
              SizedBox(height: 15.v),
              _buildClose(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPin(BuildContext context) {
    return Consumer<PinProvider>(
      builder: (context, provider, child) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 100.v,
            crossAxisCount: 3,
            mainAxisSpacing: 26.h,
            crossAxisSpacing: 26.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.pinModelObj.pinItemList.length,
          itemBuilder: (context, index) {
            PinItemModel model = provider.pinModelObj.pinItemList[index];
            return PinItemWidget(model);
          },
        );
      },
    );
  }

  Widget _buildClose(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15.h, right: 30.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 34.v,
              width: 51.h,
              margin: EdgeInsets.only(top: 29.v, bottom: 25.v),
            ),
            Spacer(flex: 54),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 15.v),
              decoration: AppDecoration.fillYellow800.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder40,
              ),
              child: Text(
                "lbl_0".tr,
                style: theme.textTheme.displayMedium,
              ),
            ),
            Spacer(flex: 45),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 28.v,
              width: 43.h,
              margin: EdgeInsets.only(top: 32.v, bottom: 28.v),
            ),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text('This is the next screen'),
      ),
    );
  }
}
