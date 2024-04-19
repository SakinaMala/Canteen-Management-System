import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/android_small_one_controller.dart';
import 'models/android_small_one_model.dart';
import 'models/chipviewcafe_item_model.dart';
import 'models/itemdetails_item_model.dart';
import 'widgets/chipviewcafe_item_widget.dart';
import 'widgets/itemdetails_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AndroidSmallOnePage extends StatelessWidget {
  AndroidSmallOnePage({Key? key})
      : super(
          key: key,
        );

  AndroidSmallOneController controller =
      Get.put(AndroidSmallOneController(AndroidSmallOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildColumnCategorie(),
              SizedBox(height: 47.v),
              _buildColumnOrderAgain(),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "lbl_swipe".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDoubleRight,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnCategorie() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(left: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_categories".tr,
              style: CustomTextStyles.titleMediumExtraBold,
            ),
            SizedBox(height: 46.v),
            Align(
              alignment: Alignment.center,
              child: Obx(
                () => Wrap(
                  runSpacing: 20.v,
                  spacing: 20.h,
                  children: List<Widget>.generate(
                    controller.androidSmallOneModelObj.value
                        .chipviewcafeItemList.value.length,
                    (index) {
                      ChipviewcafeItemModel model = controller
                          .androidSmallOneModelObj
                          .value
                          .chipviewcafeItemList
                          .value[index];
                      return ChipviewcafeItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnOrderAgain() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "lbl_order_again".tr,
                style: CustomTextStyles.titleMediumExtraBold,
              ),
            ),
            SizedBox(height: 18.v),
            SizedBox(
              height: 226.v,
              child: Obx(
                () => ListView.separated(
                  padding: EdgeInsets.only(right: 13.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 13.h,
                    );
                  },
                  itemCount: controller.androidSmallOneModelObj.value
                      .itemdetailsItemList.value.length,
                  itemBuilder: (context, index) {
                    ItemdetailsItemModel model = controller
                        .androidSmallOneModelObj
                        .value
                        .itemdetailsItemList
                        .value[index];
                    return ItemdetailsItemWidget(
                      model,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
