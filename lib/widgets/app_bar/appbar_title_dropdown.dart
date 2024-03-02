import 'package:wallet_wise/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 96.h,
        hintText: "lbl_month".tr,
        hintStyle: CustomTextStyles.titleSmallGray90002,
        items: items,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(8.h, 8.v, 4.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgMagiconsGlyphArrowArrowdown2Black90001,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        borderDecoration: DropDownStyleHelper.outlineGrayTL20,
        filled: false,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
