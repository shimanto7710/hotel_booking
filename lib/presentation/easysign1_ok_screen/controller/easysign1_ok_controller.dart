import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/easysign1_ok_screen/models/easysign1_ok_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the Easysign1OkScreen.
///
/// This class manages the state of the Easysign1OkScreen, including the
/// current easysign1OkModelObj
class Easysign1OkController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<Easysign1OkModel> easysign1OkModelObj = Easysign1OkModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('880').obs;

  Rx<bool> teenyiconstickcirclesolid = false.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
