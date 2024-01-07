import '../controller/splash_eone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashEoneScreen.
///
/// This class ensures that the SplashEoneController is created when the
/// SplashEoneScreen is first loaded.
class SplashEoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashEoneController());
  }
}
