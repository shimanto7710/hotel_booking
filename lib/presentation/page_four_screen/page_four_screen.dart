import 'controller/page_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_icon_button.dart';

class PageFourScreen extends GetWidget<PageFourController> {
  const PageFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildArrowLeftColumn(),
                      SizedBox(height: 26.v),
                      Container(
                          width: 274.h,
                          margin: EdgeInsets.only(left: 24.h, right: 77.h),
                          child: Text("msg_new_hilltop_villa".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: theme.colorScheme.errorContainer
                                      .withOpacity(1),
                                  fontSize: 17.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w500))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: _buildSeventyNine(
                              reviewText: "lbl_4_9_35_review".tr)),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFavoritePrimary8x6,
                                height: 8.v,
                                width: 6.h,
                                margin: EdgeInsets.only(bottom: 2.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("msg_alikadom_bandarbon".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.errorContainer
                                            .withOpacity(1),
                                        fontSize: 9.fSize,
                                        fontFamily: 'Urbane',
                                        fontWeight: FontWeight.w300)))
                          ])),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1),
                              indent: 25.h,
                              endIndent: 25.h)),
                      SizedBox(height: 25.v),
                      _buildNinetyFiveRow(),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1),
                              indent: 25.h,
                              endIndent: 25.h)),
                      SizedBox(height: 27.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 320.h,
                              margin: EdgeInsets.only(left: 24.h, right: 30.h),
                              child: Text("msg_simply_dummy_text".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: theme.colorScheme.errorContainer
                                          .withOpacity(1),
                                      fontSize: 10.fSize,
                                      fontFamily: 'Urbane',
                                      fontWeight: FontWeight.w300)))),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_see_more2".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 10.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline))),
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1),
                              indent: 25.h,
                              endIndent: 25.h)),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_where_to_sleep".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w500))),
                      SizedBox(height: 12.v),
                      _buildCheckAvailabilityStack(),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1),
                              indent: 25.h,
                              endIndent: 25.h)),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_amenities".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w500))),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 55.h),
                          child: Text("lbl_garden_view".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 13.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w300))),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 55.h),
                          child: Text("lbl_mountain_view".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 13.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w300))),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 54.h),
                          child: Text("lbl_wifi".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 13.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w300))),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 54.h),
                          child: Text("msg_air_conditioning".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 13.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w300))),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCar,
                                height: 14.v,
                                width: 16.h,
                                margin: EdgeInsets.only(bottom: 2.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text("lbl_free_parking".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.onPrimary,
                                        fontSize: 13.fSize,
                                        fontFamily: 'Urbane',
                                        fontWeight: FontWeight.w300)))
                          ])),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1),
                              indent: 25.h,
                              endIndent: 25.h)),
                      SizedBox(height: 21.v),
                      _buildReviewsRow(),
                      SizedBox(height: 23.v),
                      _buildDescriptionHorizontalScroll(),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_see_all_35_review".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Urbane',
                                  fontWeight: FontWeight.w500))),
                      SizedBox(height: 34.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildArrowLeftColumn() {
    return SizedBox(
        height: 238.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle42238x375,
              height: 238.v,
              width: 375.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(12.h)),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 5.h, right: 6.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(left: 15.h, right: 19.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 23.v,
                                  width: 35.h,
                                  padding: EdgeInsets.all(4.h),
                                  decoration:
                                      IconButtonStyleHelper.outlinePrimary,
                                  onTap: () {
                                    onTapBtnArrowLeft();
                                  },
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowLeftGray80001)),
                              Spacer(),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSend,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(bottom: 7.v)),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFavoriteGray8000115x21,
                                  height: 15.v,
                                  width: 21.h,
                                  margin:
                                      EdgeInsets.only(left: 19.h, bottom: 7.v))
                            ])),
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
                                onTapBtnArrowLeft1();
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
  Widget _buildNinetyFiveRow() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Column(children: [
                        Text("msg_entire_villa_hosted".tr,
                            style: TextStyle(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1),
                                fontSize: 14.fSize,
                                fontFamily: 'Urbane',
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 4.v),
                        SizedBox(
                            height: 11.v,
                            width: 219.h,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("msg_2_guest_1_bedrooms".tr,
                                          style: TextStyle(
                                              color: theme
                                                  .colorScheme.errorContainer
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
                ])));
  }

  /// Section Widget
  Widget _buildCheckAvailabilityStack() {
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
                        SizedBox(height: 8.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.v, bottom: 4.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_5000tk_night".tr,
                                            style: TextStyle(
                                                color: theme
                                                    .colorScheme.errorContainer
                                                    .withOpacity(1),
                                                fontSize: 14.fSize,
                                                fontFamily: 'Urbane',
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(height: 2.v),
                                        _buildSeventyNine(
                                            reviewText: "lbl_4_9_35_review".tr)
                                      ])),
                              CustomElevatedButton(
                                  height: 43.v,
                                  width: 162.h,
                                  text: "msg_check_abailability".tr)
                            ]),
                        SizedBox(height: 14.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                width: 227.h,
                                child: Divider(
                                    color: appTheme.gray800, endIndent: 74.h)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildReviewsRow() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text("lbl_reviews".tr,
                          style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontSize: 14.fSize,
                              fontFamily: 'Urbane',
                              fontWeight: FontWeight.w500))),
                  Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 8.v,
                                width: 11.h,
                                margin: EdgeInsets.only(bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("lbl_4_9_35_review".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.errorContainer
                                            .withOpacity(1),
                                        fontSize: 10.fSize,
                                        fontFamily: 'Urbane',
                                        fontWeight: FontWeight.w300)))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildDescriptionHorizontalScroll() {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 36.h),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 133.v,
                    width: 358.h,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                              width: 217.h,
                              child: Text("msg_simply_dummy_text2".tr,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: theme.colorScheme.errorContainer
                                          .withOpacity(1),
                                      fontSize: 10.fSize,
                                      fontFamily: 'Urbane',
                                      fontWeight: FontWeight.w300)))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 13.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse13,
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                        radius: BorderRadius.circular(17.h),
                                        margin: EdgeInsets.only(bottom: 86.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, top: 4.v, bottom: 88.v),
                                        child: _buildKasemoLeeColumn(
                                            userImage: "lbl_akash_jr".tr,
                                            monthText: "lbl_january_2021".tr)),
                                    Spacer(),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              width: 100.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse14,
                                                        height: 34.adaptSize,
                                                        width: 34.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(17.h)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 4.v,
                                                                bottom: 2.v),
                                                        child: _buildKasemoLeeColumn(
                                                            userImage:
                                                                "lbl_kasemo_lee"
                                                                    .tr,
                                                            monthText:
                                                                "lbl_january_2021"
                                                                    .tr))
                                                  ])),
                                          SizedBox(height: 11.v),
                                          SizedBox(
                                              width: 81.h,
                                              child: Text(
                                                  "msg_simply_dummy_text3".tr,
                                                  maxLines: 5,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: theme.colorScheme
                                                          .errorContainer
                                                          .withOpacity(1),
                                                      fontSize: 10.fSize,
                                                      fontFamily: 'Urbane',
                                                      fontWeight:
                                                          FontWeight.w300)))
                                        ])
                                  ])))
                    ])))));
  }

  /// Common widget
  Widget _buildSeventyNine({required String reviewText}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 7.v,
          width: 10.h,
          margin: EdgeInsets.symmetric(vertical: 1.v)),
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

  /// Common widget
  Widget _buildKasemoLeeColumn({
    required String userImage,
    required String monthText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(userImage,
          style: TextStyle(
              color: theme.colorScheme.onPrimary,
              fontSize: 13.fSize,
              fontFamily: 'Urbane',
              fontWeight: FontWeight.w300)),
      Text(monthText,
          style: TextStyle(
              color: appTheme.gray80001,
              fontSize: 9.fSize,
              fontFamily: 'Urbane',
              fontWeight: FontWeight.w300))
    ]);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft1() {
    Get.back();
  }
}
