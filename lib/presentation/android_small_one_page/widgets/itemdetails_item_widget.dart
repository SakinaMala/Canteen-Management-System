import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../controller/android_small_one_controller.dart';
import '../models/itemdetails_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ItemdetailsItemWidget extends StatelessWidget {
  ItemdetailsItemWidget(this.itemdetailsItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ItemdetailsItemModel itemdetailsItemModelObj;

  var controller = Get.find<AndroidSmallOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 159.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 108.v,
            width: 130.h,
            margin: EdgeInsets.only(left: 3.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: itemdetailsItemModelObj.itemImage!.value,
                height: 108.v,
                width: 130.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            height: 19.v,
            width: 78.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      itemdetailsItemModelObj.itemname1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      itemdetailsItemModelObj.itemname2!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            height: 19.v,
            width: 37.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      itemdetailsItemModelObj.itemprice1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      itemdetailsItemModelObj.itemprice2!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 7.v),
          CustomOutlinedButton(
            width: 132.h,
            text: "lbl_add_to_cart".tr,
            margin: EdgeInsets.only(left: 3.h),
            buttonTextStyle: theme.textTheme.labelLarge!,
          )
        ],
      ),
    );
  }
}
