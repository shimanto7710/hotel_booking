import '../../../core/app_export.dart';

/// This class is used in the [resortcomponent_item_widget] screen.
class ResortcomponentItemModel {
  ResortcomponentItemModel({
    this.resortName,
    this.resortImage,
    this.resortDescription,
    this.roomType,
    this.id,
  }) {
    resortName = resortName ?? Rx("Bhai Bhai resort ,CoxBazar");
    resortImage = resortImage ?? Rx(ImageConstant.imgFavoritePrimary);
    resortDescription = resortDescription ?? Rx("Beach side resort, Coxbazar");
    roomType = roomType ?? Rx("Studio  1 Bed  1 Bath");
    id = id ?? Rx("");
  }

  Rx<String>? resortName;

  Rx<String>? resortImage;

  Rx<String>? resortDescription;

  Rx<String>? roomType;

  Rx<String>? id;
}
