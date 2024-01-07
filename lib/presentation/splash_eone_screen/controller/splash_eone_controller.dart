import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/splash_eone_screen/models/splash_eone_model.dart';

/// A controller class for the SplashEoneScreen.
///
/// This class manages the state of the SplashEoneScreen, including the
/// current splashEoneModelObj
class SplashEoneController extends GetxController {
  Rx<SplashEoneModel> splashEoneModelObj = SplashEoneModel().obs;
}
