import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_one_screen/models/page_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PageOneScreen.
///
/// This class manages the state of the PageOneScreen, including the
/// current pageOneModelObj
class PageOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<PageOneModel> pageOneModelObj = PageOneModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
