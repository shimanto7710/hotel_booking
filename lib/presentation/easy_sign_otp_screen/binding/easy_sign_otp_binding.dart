import '../controller/easy_sign_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EasySignOtpScreen.
///
/// This class ensures that the EasySignOtpController is created when the
/// EasySignOtpScreen is first loaded.
class EasySignOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EasySignOtpController());
  }
}
