import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../controller/main_controller.dart';
import '../models/productcard_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(this.productcardItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.v),
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
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillGray600.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: productcardItemModelObj.itemImage!.value,
                height: 88.v,
                width: 110.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topLeft,
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
                      productcardItemModelObj.itemname1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      productcardItemModelObj.itemname2!.value,
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
                      productcardItemModelObj.itemprice1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      productcardItemModelObj.itemprice2!.value,
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
