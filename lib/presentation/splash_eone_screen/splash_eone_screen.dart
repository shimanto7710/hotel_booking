import 'controller/splash_eone_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashEoneScreen extends GetWidget<SplashEoneController> {
  const SplashEoneScreen({Key? key})
      : super(
          key: key,
        );

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
              image: AssetImage(
                ImageConstant.imgSplashOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 769.v,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 55.h,
              vertical: 320.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOohgoW2,
                  height: 93.v,
                  width: 259.h,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Text(
                      "msg_hotel_booking_partner".tr,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 18.fSize,
                        fontFamily: 'Urbane',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
