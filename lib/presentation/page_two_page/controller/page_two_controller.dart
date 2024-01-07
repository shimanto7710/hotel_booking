import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_two_page/models/page_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PageTwoPage.
///
/// This class manages the state of the PageTwoPage, including the
/// current pageTwoModelObj
class PageTwoController extends GetxController {
  PageTwoController(this.pageTwoModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<PageTwoModel> pageTwoModelObj;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
