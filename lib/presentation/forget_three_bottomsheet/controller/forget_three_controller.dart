import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/forget_three_bottomsheet/models/forget_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgetThreeBottomsheet.
///
/// This class manages the state of the ForgetThreeBottomsheet, including the
/// current forgetThreeModelObj
class ForgetThreeController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Rx<ForgetThreeModel> forgetThreeModelObj = ForgetThreeModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }
}
