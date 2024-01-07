import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/splash_easy_two_screen/models/splash_easy_two_model.dart';

/// A controller class for the SplashEasyTwoScreen.
///
/// This class manages the state of the SplashEasyTwoScreen, including the
/// current splashEasyTwoModelObj
class SplashEasyTwoController extends GetxController {
  Rx<SplashEasyTwoModel> splashEasyTwoModelObj = SplashEasyTwoModel().obs;
}
