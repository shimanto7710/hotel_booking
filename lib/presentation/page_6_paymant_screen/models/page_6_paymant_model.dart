import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';

/// This class defines the variables used in the [page_6_paymant_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Page6PaymantModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([
    Userprofile2ItemModel(
        guestName:
            "Guest                                                   4000tk "
                .obs,
        paymentText: "Pay the total now and you’re all set.".obs),
    Userprofile2ItemModel(
        guestName:
            "Guest                                                   3000tk "
                .obs,
        paymentText:
            "Pay 3000tk now, and the rest (1000tk) will be charge in location after the trip. No extra fees."
                .obs)
  ]);
}
