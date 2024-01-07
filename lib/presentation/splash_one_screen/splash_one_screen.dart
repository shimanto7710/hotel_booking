import 'controller/splash_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';

class SplashOneScreen extends GetWidget<SplashOneController> {
  const SplashOneScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 67.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 89.v),
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
                          Spacer(),
                          CustomElevatedButton(
                              text: "lbl_login".tr,
                              onPressed: () {
                                onTapLogin();
                              }),
                          SizedBox(height: 26.v),
                          CustomOutlinedButton(
                              text: "lbl_sign_up".tr,
                              buttonStyle:
                                  CustomButtonStyles.outlineOnPrimaryContainer,
                              onPressed: () {
                                onTapSignUp();
                              }),
                          SizedBox(height: 37.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_skip".tr,
                                    style: TextStyle(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1),
                                        fontSize: 17.fSize,
                                        fontFamily: 'Urbane',
                                        fontWeight: FontWeight.w500)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgForward,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 5.h, top: 3.v, bottom: 3.v))
                              ])
                        ])))));
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.signInOneScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
