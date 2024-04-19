import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewcafe_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChipviewcafeItemWidget extends StatelessWidget {
  ChipviewcafeItemWidget(this.chipviewcafeItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ChipviewcafeItemModel chipviewcafeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 10.v,
          right: 14.h,
          bottom: 10.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewcafeItemModelObj.cafe!.value,
          style: TextStyle(
            color: appTheme.black90001,
            fontSize: 18.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgCafe,
          height: 20.v,
          width: 36.h,
        ),
        selected: (chipviewcafeItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray200,
        selectedColor: appTheme.gray200,
        shape: (chipviewcafeItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.black90001.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  7.h,
                ))
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
        onSelected: (value) {
          chipviewcafeItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
