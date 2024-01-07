import '../page_6_paymant_screen/widgets/userprofile2_item_widget.dart';
import 'controller/page_6_paymant_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';

class Page6PaymantScreen extends GetWidget<Page6PaymantController> {
  const Page6PaymantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 9.v),
                child: Column(children: [
                  _buildTourTrip(),
                  SizedBox(height: 22.v),
                  Divider(
                      color: theme.colorScheme.errorContainer.withOpacity(1),
                      indent: 2.h),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_choose_how_to_pay".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w500)))),
                  SizedBox(height: 16.v),
                  _buildUserProfile(),
                  SizedBox(height: 23.v),
                  Divider(
                      color: theme.colorScheme.errorContainer.withOpacity(1),
                      indent: 2.h),
                  SizedBox(height: 29.v),
                  _buildToken(),
                  SizedBox(height: 27.v),
                  Divider(
                      color: theme.colorScheme.errorContainer.withOpacity(1),
                      indent: 6.h),
                  SizedBox(height: 22.v),
                  _buildPayWith(),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_price_details".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w500)))),
                  SizedBox(height: 14.v),
                  Text("msg_7000tk_x_5_night".tr,
                      style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 13.fSize,
                          fontFamily: 'Urbane',
                          fontWeight: FontWeight.w300)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray80035x25,
            margin: EdgeInsets.only(left: 23.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_go_back".tr, margin: EdgeInsets.only(left: 7.h)));
  }

  /// Section Widget
  Widget _buildTourTrip() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_tour_trip".tr,
              style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontSize: 14.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 17.v),
          Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_dates".tr,
                        style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontSize: 13.fSize,
                            fontFamily: 'Urbane',
                            fontWeight: FontWeight.w500)),
                    Text("lbl_edit".tr,
                        style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontSize: 13.fSize,
                            fontFamily: 'Urbane',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline))
                  ])),
          SizedBox(height: 3.v),
          Text("lbl_jun_6_10".tr,
              style: TextStyle(
                  color: appTheme.gray80001,
                  fontSize: 13.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w300)),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("lbl_guest".tr,
                                  style: TextStyle(
                                      color: theme.colorScheme.onPrimary,
                                      fontSize: 13.fSize,
                                      fontFamily: 'Urbane',
                                      fontWeight: FontWeight.w500))),
                          SizedBox(height: 5.v),
                          Text("lbl_1_guest".tr,
                              style: TextStyle(
                                  color: appTheme.gray80001,
                                  fontSize: 13.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w300))
                        ]),
                    Padding(
                        padding: EdgeInsets.only(bottom: 20.v),
                        child: Text("lbl_edit".tr,
                            style: TextStyle(
                                color: theme.colorScheme.onPrimary,
                                fontSize: 13.fSize,
                                fontFamily: 'Urbane',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline)))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 3.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 13.v);
            },
            itemCount: controller
                .page6PaymantModelObj.value.userprofile2ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile2ItemModel model = controller
                  .page6PaymantModelObj.value.userprofile2ItemList.value[index];
              return Userprofile2ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildToken() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_token".tr,
              style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontSize: 14.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w500)),
          Container(
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.fillBluegray400
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Container(
                  height: 13.adaptSize,
                  width: 13.adaptSize,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(6.h))))
        ]));
  }

  /// Section Widget
  Widget _buildPayWith() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_pay_with".tr,
              style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontSize: 14.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 84.v),
          Divider(color: theme.colorScheme.errorContainer.withOpacity(1))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
