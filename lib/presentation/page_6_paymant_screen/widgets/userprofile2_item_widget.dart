import '../controller/page_6_paymant_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<Page6PaymantController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineErrorContainer4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Obx(
                      () => Text(
                        userprofile2ItemModelObj.guestName!.value,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 13.fSize,
                          fontFamily: 'Urbane',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Obx(
                    () => Text(
                      userprofile2ItemModelObj.paymentText!.value,
                      style: TextStyle(
                        color: appTheme.gray80001,
                        fontSize: 13.fSize,
                        fontFamily: 'Urbane',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 7.h,
              top: 1.v,
              bottom: 26.v,
            ),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.fillBluegray400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: 13.adaptSize,
              width: 13.adaptSize,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
