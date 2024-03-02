import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleFourteen extends StatelessWidget {
  AppbarSubtitleFourteen({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: 164.h,
          decoration: AppDecoration.fillLime.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder13,
          ),
          child: Text(
            text,
            style: CustomTextStyles.titleSmallWhiteA700.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
      ),
    );
  }
}
