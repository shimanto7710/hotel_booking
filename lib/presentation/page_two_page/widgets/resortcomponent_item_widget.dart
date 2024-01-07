import '../controller/page_two_controller.dart';
import '../models/resortcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ResortcomponentItemWidget extends StatelessWidget {
  ResortcomponentItemWidget(
    this.resortcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ResortcomponentItemModel resortcomponentItemModelObj;

  var controller = Get.find<PageTwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Obx(
              () => Text(
                resortcomponentItemModelObj.resortName!.value,
                style: TextStyle(
                  color: theme.colorScheme.errorContainer.withOpacity(1),
                  fontSize: 10.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: resortcomponentItemModelObj.resortImage!.value,
                height: 8.v,
                width: 11.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 2.v,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 1.v),
        Obx(
          () => Text(
            resortcomponentItemModelObj.resortDescription!.value,
            style: TextStyle(
              color: appTheme.gray80001,
              fontSize: 9.fSize,
              fontFamily: 'Urbane',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Obx(
          () => Text(
            resortcomponentItemModelObj.roomType!.value,
            style: TextStyle(
              color: appTheme.gray80001,
              fontSize: 9.fSize,
              fontFamily: 'Urbane',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: 3.v),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_1000tk".tr,
                style: theme.textTheme.labelSmall,
              ),
              TextSpan(
                text: "lbl_night".tr,
                style: CustomTextStyles.bodySmallErrorContainer_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
