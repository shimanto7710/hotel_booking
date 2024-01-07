import 'controller/splash_easy_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';

class SplashEasyTwoScreen extends GetWidget<SplashEasyTwoController> {
  const SplashEasyTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplashOne),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 70.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(flex: 42),
                          SizedBox(
                              height: 96.v,
                              width: 259.h,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgOohgoW2,
                                        height: 93.v,
                                        width: 259.h,
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                            "msg_hotel_booking_partner".tr,
                                            style: TextStyle(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer
                                                    .withOpacity(1),
                                                fontSize: 18.fSize,
                                                fontFamily: 'Urbane',
                                                fontWeight: FontWeight.w300)))
                                  ])),
                          Spacer(flex: 57),
                          CustomElevatedButton(
                              text: "lbl_login".tr,
                              onPressed: () {
                                onTapLogin();
                              }),
                          SizedBox(height: 25.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup37,
                              height: 15.v,
                              width: 62.h)
                        ])))));
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.signInOneScreen,
    );
  }
}
