import '../controller/sing_up_d0ne_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SingUpD0neOneScreen.
///
/// This class ensures that the SingUpD0neOneController is created when the
/// SingUpD0neOneScreen is first loaded.
class SingUpD0neOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingUpD0neOneController());
  }
}
