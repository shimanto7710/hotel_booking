import '../controller/page_one_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<PageOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 302.v,
      width: 325.h,
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofileItemModelObj.userImage!.value,
              height: 302.v,
              width: 325.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 51.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => Text(
                      userprofileItemModelObj.titleText!.value,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 20.fSize,
                        fontFamily: 'Urbane',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Obx(
                    () => Text(
                      userprofileItemModelObj.descriptionText!.value,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 13.fSize,
                        fontFamily: 'Urbane',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                    height: 31.v,
                    width: 99.h,
                    text: "lbl_see_more".tr,
                    buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
