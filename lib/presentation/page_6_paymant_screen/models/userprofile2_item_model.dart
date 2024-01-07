import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.guestName,
    this.paymentText,
    this.id,
  }) {
    guestName = guestName ??
        Rx("Guest                                                   4000tk ");
    paymentText = paymentText ?? Rx("Pay the total now and you’re all set.");
    id = id ?? Rx("");
  }

  Rx<String>? guestName;

  Rx<String>? paymentText;

  Rx<String>? id;
}
