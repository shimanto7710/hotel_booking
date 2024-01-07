import 'controller/page_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_icon_button.dart';

class PageThreeScreen extends GetWidget<PageThreeController> {
  const PageThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeftColumn(),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 12.v),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 14.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 274.h,
                                    margin: EdgeInsets.only(
                                        left: 24.h, right: 77.h),
                                    child: Text("msg_new_hilltop_villa".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: theme
                                                .colorScheme.errorContainer
                                                .withOpacity(1),
                                            fontSize: 17.fSize,
                                            fontFamily: 'Urbane',
                                            fontWeight: FontWeight.w500)))),
                            SizedBox(height: 4.v),
                            _buildSignalHorizontalScroll(),
                            SizedBox(height: 5.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 27.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFavoritePrimary8x6,
                                          height: 8.v,
                                          width: 6.h,
                                          margin: EdgeInsets.only(bottom: 2.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5.h),
                                          child: Text(
                                              "msg_alikadom_bandarbon".tr,
                                              style: TextStyle(
                                                  color: theme.colorScheme
                                                      .errorContainer
                                                      .withOpacity(1),
                                                  fontSize: 9.fSize,
                                                  fontFamily: 'Urbane',
                                                  fontWeight: FontWeight.w300)))
                                    ]))),
                            SizedBox(height: 25.v),
                            Divider(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1),
                                indent: 24.h,
                                endIndent: 25.h),
                            SizedBox(height: 25.v),
                            _buildNinetyFiveRow(),
                            SizedBox(height: 28.v),
                            Divider(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1),
                                indent: 24.h,
                                endIndent: 25.h),
                            SizedBox(height: 27.v),
                            Container(
                                width: 320.h,
                                margin:
                                    EdgeInsets.only(left: 24.h, right: 30.h),
                                child: Text("msg_simply_dummy_text".tr,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: theme.colorScheme.errorContainer
                                            .withOpacity(1),
                                        fontSize: 10.fSize,
                                        fontFamily: 'Urbane',
                                        fontWeight: FontWeight.w300))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl_see_more2".tr,
                                        style: TextStyle(
                                            color: theme.colorScheme.primary,
                                            fontSize: 10.fSize,
                                            fontFamily: 'Urbane',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline)))),
                            SizedBox(height: 26.v),
                            Divider(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1),
                                indent: 24.h,
                                endIndent: 24.h),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl_where_to_sleep".tr,
                                        style: TextStyle(
                                            color: theme.colorScheme.onPrimary,
                                            fontSize: 14.fSize,
                                            fontFamily: 'Urbane',
                                            fontWeight: FontWeight.w500))))
                          ]))
                ])),
            bottomNavigationBar: _buildCheckAbailabilityColumn()));
  }

  /// Section Widget
  Widget _buildArrowLeftColumn() {
    return SizedBox(
        height: 238.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle42,
              height: 238.v,
              width: 375.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(12.h)),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 5.h, right: 6.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomAppBar(
                        height: 23.v,
                        leadingWidth: 55.h,
                        leading: AppbarLeadingIconbutton(
                            imagePath: ImageConstant.imgArrowLeftGray80001,
                            margin: EdgeInsets.only(left: 20.h),
                            onTap: () {
                              onTapArrowLeft();
                            }),
                        actions: [
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgSend,
                              margin: EdgeInsets.only(left: 25.h, right: 7.h)),
                          AppbarTrailingImage(
                              imagePath:
                                  ImageConstant.imgFavoriteGray8000115x21,
                              margin: EdgeInsets.only(
                                  left: 20.h, right: 32.h, bottom: 1.v))
                        ]),
                    SizedBox(height: 53.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration: IconButtonStyleHelper
                                  .fillOnPrimaryContainerTL19,
                              onTap: () {
                                onTapBtnArrowLeft();
                              },
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowLeftGray80038x38)),
                          CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration: IconButtonStyleHelper
                                  .fillOnPrimaryContainerTL19,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft38x38))
                        ]),
                    SizedBox(height: 90.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 17.v,
                            width: 34.h,
                            margin: EdgeInsets.only(right: 19.h),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 16.v,
                                      width: 34.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.blue507f,
                                          borderRadius:
                                              BorderRadius.circular(3.h)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_1_5".tr,
                                      style: TextStyle(
                                          color: appTheme.gray80001,
                                          fontSize: 14.fSize,
                                          fontFamily: 'Urbane',
                                          fontWeight: FontWeight.w500)))
                            ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildSignalHorizontalScroll() {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 24.h),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildTkNightRow(reviewText: "lbl_4_9_35_review".tr),
              CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 9.v,
                  width: 10.h,
                  margin: EdgeInsets.only(left: 323.h, bottom: 2.v))
            ]))));
  }

  /// Section Widget
  Widget _buildNinetyFiveRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(children: [
                Text("msg_entire_villa_hosted".tr,
                    style: TextStyle(
                        color: theme.colorScheme.errorContainer.withOpacity(1),
                        fontSize: 14.fSize,
                        fontFamily: 'Urbane',
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 5.v),
                SizedBox(
                    height: 11.v,
                    width: 219.h,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_2_guest_1_bedrooms".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.errorContainer
                                      .withOpacity(1),
                                  fontSize: 9.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w300))),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup92,
                          height: 1.v,
                          width: 108.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 40.h))
                    ]))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse9,
              height: 34.adaptSize,
              width: 34.adaptSize,
              radius: BorderRadius.circular(17.h))
        ]));
  }

  /// Section Widget
  Widget _buildCheckAbailabilityColumn() {
    return SizedBox(
        height: 115.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle441,
              height: 113.v,
              width: 152.h,
              radius: BorderRadius.circular(6.h),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 25.h)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 3.v),
                  decoration: AppDecoration.outlineErrorContainer3.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL6),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 8.v),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.v, bottom: 4.v),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_5000tk_night".tr,
                                                style: TextStyle(
                                                    color: theme.colorScheme
                                                        .errorContainer
                                                        .withOpacity(1),
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Urbane',
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            _buildTkNightRow(
                                                reviewText:
                                                    "lbl_4_9_35_review".tr)
                                          ])),
                                  CustomElevatedButton(
                                      height: 43.v,
                                      width: 162.h,
                                      text: "msg_check_abailability".tr)
                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(top: 14.v),
                                child: SizedBox(
                                    width: 227.h,
                                    child: Divider(
                                        color: appTheme.gray800,
                                        endIndent: 74.h))))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildTkNightRow({required String reviewText}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 9.v,
          width: 10.h,
          margin: EdgeInsets.only(bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(reviewText,
              style: TextStyle(
                  color: theme.colorScheme.errorContainer.withOpacity(1),
                  fontSize: 9.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w300)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
