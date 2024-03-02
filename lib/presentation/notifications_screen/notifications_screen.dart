import 'package:wallet_wise/widgets/app_bar/custom_app_bar.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_leading_image.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:wallet_wise/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'widgets/notifications_item_widget.dart';
import 'models/notifications_item_model.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';
import 'provider/notifications_provider.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationsProvider(),
      child: NotificationsScreen(),
    );
  }
}

class NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Text(
                    "msg_mark_all_as_read".tr,
                    style: CustomTextStyles.titleMediumNotoSansAmber600,
                  ),
                ),
              ),
              SizedBox(height: 36.v),
              _buildNotifications(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 55.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMagiconsGlyphPrimary32x32,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 7.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_notifications".tr,
        margin: EdgeInsets.only(left: 29.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgBell1WhiteA700,
          margin: EdgeInsets.fromLTRB(19.h, 10.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Consumer<NotificationsProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 9.0.v),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.yellow800.withOpacity(0.37),
                  ),
                ),
              );
            },
            itemCount:
                provider.notificationsModelObj.notificationsItemList.length,
            itemBuilder: (context, index) {
              NotificationsItemModel model =
                  provider.notificationsModelObj.notificationsItemList[index];
              return NotificationsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
