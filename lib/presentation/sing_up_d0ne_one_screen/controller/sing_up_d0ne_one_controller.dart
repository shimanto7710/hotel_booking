import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sing_up_d0ne_one_screen/models/sing_up_d0ne_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SingUpD0neOneScreen.
///
/// This class manages the state of the SingUpD0neOneScreen, including the
/// current singUpD0neOneModelObj
class SingUpD0neOneController extends GetxController {
  TextEditingController userNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  Rx<SingUpD0neOneModel> singUpD0neOneModelObj = SingUpD0neOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameEditTextController.dispose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
  }
}
