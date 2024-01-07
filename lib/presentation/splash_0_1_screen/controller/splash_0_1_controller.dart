import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/splash_0_1_screen/models/splash_0_1_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the Splash01Screen.
///
/// This class manages the state of the Splash01Screen, including the
/// current splash01ModelObj
class Splash01Controller extends GetxController {
  TextEditingController zipcodeController = TextEditingController();

  Rx<Splash01Model> splash01ModelObj = Splash01Model().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    zipcodeController.dispose();
  }
}
