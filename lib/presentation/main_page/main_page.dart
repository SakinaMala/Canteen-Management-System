import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/main_controller.dart';
import 'models/main_model.dart';
import 'models/productcard_item_model.dart';
import 'widgets/productcard_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({Key? key})
      : super(
          key: key,
        );

  MainController controller = Get.put(MainController(MainModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 3.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "msg_search_for_your".tr,
                    ),
                  ),
                  SizedBox(height: 39.v),
                  _buildRowMenu(),
                  SizedBox(height: 31.v),
                  _buildColumnOurTodays(),
                  SizedBox(height: 9.v),
                  Row(
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
                  SizedBox(height: 7.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgShoppingCart,
                    height: 38.v,
                    width: 32.h,
                    margin: EdgeInsets.only(right: 41.h),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgAsianStreetFood,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 11.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_welcome_to".tr,
        margin: EdgeInsets.only(left: 14.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowMenu() {
    return Container(
      margin: EdgeInsets.only(left: 8.h),
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 179.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 27.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillWhiteA,
                  child: Text(
                    "lbl_menu".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "msg_enjoy_your_meal".tr,
                    style: CustomTextStyles.titleMediumGray800,
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9,
            height: 84.v,
            width: 100.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(
              top: 3.v,
              right: 20.h,
              bottom: 9.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnOurTodays() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Text(
            "msg_our_today_s_special".tr,
            style: CustomTextStyles.titleMediumExtraBold,
          ),
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 229.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(right: 2.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 17.h,
                );
              },
              itemCount: controller
                  .mainModelObj.value.productcardItemList.value.length,
              itemBuilder: (context, index) {
                ProductcardItemModel model = controller
                    .mainModelObj.value.productcardItemList.value[index];
                return ProductcardItemWidget(
                  model,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
