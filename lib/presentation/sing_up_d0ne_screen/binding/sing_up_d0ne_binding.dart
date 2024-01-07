import '../controller/sing_up_d0ne_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SingUpD0neScreen.
///
/// This class ensures that the SingUpD0neController is created when the
/// SingUpD0neScreen is first loaded.
class SingUpD0neBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingUpD0neController());
  }
}
