import '../controller/page_6_paymant_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Page6PaymantScreen.
///
/// This class ensures that the Page6PaymantController is created when the
/// Page6PaymantScreen is first loaded.
class Page6PaymantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page6PaymantController());
  }
}
