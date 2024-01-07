import 'controller/page_two_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_two_page/page_two_page.dart';
import 'package:shimanto_s_application1/widgets/custom_bottom_bar.dart';

class PageTwoContainerScreen extends GetWidget<PageTwoContainerController> {
  const PageTwoContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.pageTwoPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group36:
        return AppRoutes.pageTwoPage;
      case BottomBarEnum.Vectorgray80001:
        return "/";
      case BottomBarEnum.Vectorgray8000118x18:
        return "/";
      case BottomBarEnum.Group76:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.pageTwoPage:
        return PageTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
