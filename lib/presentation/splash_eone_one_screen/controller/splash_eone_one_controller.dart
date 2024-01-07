import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/splash_eone_one_screen/models/splash_eone_one_model.dart';

/// A controller class for the SplashEoneOneScreen.
///
/// This class manages the state of the SplashEoneOneScreen, including the
/// current splashEoneOneModelObj
class SplashEoneOneController extends GetxController {
  Rx<SplashEoneOneModel> splashEoneOneModelObj = SplashEoneOneModel().obs;
}
