import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/splash_one_screen/models/splash_one_model.dart';

/// A controller class for the SplashOneScreen.
///
/// This class manages the state of the SplashOneScreen, including the
/// current splashOneModelObj
class SplashOneController extends GetxController {
  Rx<SplashOneModel> splashOneModelObj = SplashOneModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.splash01Screen,
      );
    });
  }
}
