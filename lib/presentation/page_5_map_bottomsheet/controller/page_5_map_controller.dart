import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_5_map_bottomsheet/models/page_5_map_model.dart';

/// A controller class for the Page5MapBottomsheet.
///
/// This class manages the state of the Page5MapBottomsheet, including the
/// current page5MapModelObj
class Page5MapController extends GetxController {
  Rx<Page5MapModel> page5MapModelObj = Page5MapModel().obs;
}
