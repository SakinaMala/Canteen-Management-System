import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/android_small_two_controller.dart'; // ignore_for_file: must_be_immutable

class AndroidSmallTwoScreen extends GetWidget<AndroidSmallTwoController> {
  const AndroidSmallTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 31.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_what_would_you_like".tr,
                ),
              ),
              SizedBox(height: 19.v),
              SizedBox(
                height: 417.v,
                width: 331.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearchBar,
                      height: 178.v,
                      width: 324.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            _buildSearchBar(),
                            SizedBox(height: 19.v),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: CustomTextFormField(
                                controller: controller.burgersvalueController,
                                hintText: "lbl_burgers".tr,
                                hintStyle: theme.textTheme.titleMedium!,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 26.h,
                                  vertical: 12.v,
                                ),
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: CustomTextFormField(
                                controller: controller.saladsvalueoneController,
                                hintText: "lbl_salads".tr,
                                hintStyle: theme.textTheme.titleMedium!,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 28.h,
                                  vertical: 12.v,
                                ),
                              ),
                            ),
                            SizedBox(height: 12.v),
                            _buildCategoryView(),
                            SizedBox(height: 25.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 39.h,
                                right: 16.h,
                              ),
                              child: _buildDesertsRow(
                                desertsText: "lbl_pizzas".tr,
                              ),
                            ),
                            SizedBox(height: 48.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 39.h,
                                right: 16.h,
                              ),
                              child: _buildDesertsRow(
                                desertsText: "lbl_deserts".tr,
                              ),
                            ),
                            SizedBox(height: 39.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 42.h,
                                right: 16.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_indian".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 10.v,
                                    width: 5.h,
                                    margin: EdgeInsets.only(
                                      top: 5.v,
                                      bottom: 6.v,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 55.v,
      leadingWidth: 33.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 17.v,
          bottom: 28.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_menu".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar() {
    return Container(
      height: 42.v,
      width: 325.h,
      margin: EdgeInsets.only(right: 3.h),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomTextFormField(
            width: 133.h,
            controller: controller.categoryvalueController,
            hintText: "lbl_category".tr,
            hintStyle: theme.textTheme.titleMedium!,
            alignment: Alignment.centerLeft,
            borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
            fillColor: appTheme.whiteA700,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 42.v,
              width: 199.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(right: 66.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Text(
                        "lbl_drinks".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 7.v),
                      child: Text(
                        "lbl_specials".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryView() {
    return SizedBox(
      height: 47.v,
      width: 322.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 47.v,
              width: 322.h,
              decoration: BoxDecoration(
                color: appTheme.gray50,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                border: Border.all(
                  color: appTheme.whiteA700,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(26.h, 12.v, 16.h, 12.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_sandwiches".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 10.v,
                    width: 5.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 6.v,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return SizedBox(
      child: SizedBox(
        height: 38.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 31.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 27.h),
                child: Row(
                  children: [
                    Container(
                      height: 26.v,
                      width: 41.h,
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgHomePage26x41,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 29.v,
                      width: 40.h,
                      margin: EdgeInsets.only(
                        left: 40.h,
                        top: 2.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgNotes29x40,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 25.v,
                      width: 29.h,
                      margin: EdgeInsets.only(
                        left: 40.h,
                        top: 5.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgJoyent25x29,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 38.v,
                      width: 32.h,
                      margin: EdgeInsets.only(left: 58.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgShoppingCart38x32,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildDesertsRow({required String desertsText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          desertsText,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVector,
          height: 10.v,
          width: 5.h,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 7.v,
          ),
        )
      ],
    );
  }
}
