import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.titleText,
    this.descriptionText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle26);
    titleText = titleText ?? Rx("Be our Guest");
    descriptionText = descriptionText ?? Rx("Loram ipsam questo rada lastica");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? titleText;

  Rx<String>? descriptionText;

  Rx<String>? id;
}
