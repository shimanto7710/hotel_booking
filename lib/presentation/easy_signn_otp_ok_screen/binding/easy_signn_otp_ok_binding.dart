import '../controller/easy_signn_otp_ok_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EasySignnOtpOkScreen.
///
/// This class ensures that the EasySignnOtpOkController is created when the
/// EasySignnOtpOkScreen is first loaded.
class EasySignnOtpOkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EasySignnOtpOkController());
  }
}
