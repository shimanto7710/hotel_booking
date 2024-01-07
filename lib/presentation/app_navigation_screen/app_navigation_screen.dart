import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "splash One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "splash 0.1".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splash01Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sing up (D0ne)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.singUpD0neScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "splash easy Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashEasyTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "easysign1 ok".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.easysign1OkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "easy sign otp ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.easySignOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "easy signn otp ok".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.easySignnOtpOkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "splash EOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashEoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "splash EOne One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashEoneOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in Two One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInTwoOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign in Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sign up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "sing up (D0ne) One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.singUpD0neOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "page One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "page Two - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.pageTwoContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "page Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "page Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "page 6 paymant".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.page6PaymantScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
