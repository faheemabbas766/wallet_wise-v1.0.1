import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/seamlesstransfers_item_widget.dart';
import 'models/seamlesstransfers_item_model.dart';
import 'models/onboardingtwo_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_wise/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/onboardingtwo_provider.dart';

class OnboardingtwoScreen extends StatefulWidget {
  const OnboardingtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingtwoScreenState createState() => OnboardingtwoScreenState();
}

class OnboardingtwoScreenState extends State<OnboardingtwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSkip(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 42.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 9.v),
                    _buildSeamlessTransfers(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkip(BuildContext context) {
    return SizedBox(
      height: 332.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 291.v,
            width: 340.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 11.v),
          ),
          CustomAppBar(
            height: 332.v,
            actions: [
              AppbarTrailingButton(
                margin: EdgeInsets.fromLTRB(12.h, 9.v, 12.h, 297.v),
              ),
            ],
            styleType: Style.bgFill,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeamlessTransfers(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.h,
        right: 18.h,
      ),
      child: Consumer<OnboardingtwoProvider>(
        builder: (context, provider, child) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 136.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                provider.sliderIndex = index;
              },
            ),
            itemCount:
                provider.onboardingtwoModelObj.seamlesstransfersItemList.length,
            itemBuilder: (context, index, realIndex) {
              SeamlesstransfersItemModel model = provider
                  .onboardingtwoModelObj.seamlesstransfersItemList[index];
              return SeamlesstransfersItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
