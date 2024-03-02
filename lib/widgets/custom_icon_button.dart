import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(6.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green800,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA700,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA100,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow800.withOpacity(0.57),
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal500,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red500,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillTealTL16 => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillYellowTL15 => BoxDecoration(
        color: appTheme.yellow800,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: appTheme.gray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue100,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen90001,
        borderRadius: BorderRadius.circular(18.h),
      );
}
