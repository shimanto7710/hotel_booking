import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sing_up_d0ne_screen/models/sing_up_d0ne_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SingUpD0neScreen.
///
/// This class manages the state of the SingUpD0neScreen, including the
/// current singUpD0neModelObj
class SingUpD0neController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SingUpD0neModel> singUpD0neModelObj = SingUpD0neModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
