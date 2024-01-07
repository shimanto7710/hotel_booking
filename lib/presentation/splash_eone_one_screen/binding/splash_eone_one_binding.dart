import '../controller/splash_eone_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashEoneOneScreen.
///
/// This class ensures that the SplashEoneOneController is created when the
/// SplashEoneOneScreen is first loaded.
class SplashEoneOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashEoneOneController());
  }
}
