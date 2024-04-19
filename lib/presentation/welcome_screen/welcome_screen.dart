import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/welcome_controller.dart'; // ignore_for_file: must_be_immutable

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 25.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgChefRemovebgPreview,
                height: 280.v,
                width: 300.h,
              ),
              Text(
                "lbl_welcome_to".tr,
                style: CustomTextStyles.displaySmall36,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_cosmos".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 64.v),
              CustomElevatedButton(
                height: 50.v,
                width: 163.h,
                text: "lbl_sign_up".tr,
                buttonTextStyle: theme.textTheme.headlineSmall!,
              ),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                height: 50.v,
                width: 163.h,
                text: "lbl_login".tr,
                buttonTextStyle: theme.textTheme.headlineSmall!,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }
}
