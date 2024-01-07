import '../controller/page_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PageOneScreen.
///
/// This class ensures that the PageOneController is created when the
/// PageOneScreen is first loaded.
class PageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageOneController());
  }
}
