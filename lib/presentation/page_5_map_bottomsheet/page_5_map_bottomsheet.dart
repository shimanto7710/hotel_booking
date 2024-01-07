import 'controller/page_5_map_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';

class Page5MapBottomsheet extends StatelessWidget {
  Page5MapBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  Page5MapController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 118.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 68.h,
            child: Divider(
              color: appTheme.gray800,
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "lbl_opps_back_home".tr,
              style: TextStyle(
                color: theme.colorScheme.errorContainer.withOpacity(1),
                fontSize: 14.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
