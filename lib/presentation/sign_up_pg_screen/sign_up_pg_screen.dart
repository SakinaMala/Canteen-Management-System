import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/sign_up_pg_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpPgScreen extends GetWidget<SignUpPgController> {
  SignUpPgScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.blueGray100,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMenuImg1,
                      height: 193.v,
                      width: 360.h,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 23.h,
                          vertical: 34.v,
                        ),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildSignupRow(),
                            SizedBox(height: 22.v),
                            _buildEmailEditText(),
                            SizedBox(height: 28.v),
                            _buildPasswordEditText(),
                            SizedBox(height: 26.v),
                            _buildNameEditText(),
                            SizedBox(height: 26.v),
                            _buildAddressEditText(),
                            SizedBox(height: 39.v),
                            _buildCreateButton()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupRow() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_sign_up".tr,
              style: CustomTextStyles.titleLargeBold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRegistration,
            height: 40.adaptSize,
            width: 40.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText() {
    return CustomTextFormField(
      controller: controller.emailEditTextController,
      hintText: "lbl_email".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return CustomTextFormField(
      controller: controller.passwordEditTextController,
      hintText: "lbl_password".tr,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return CustomTextFormField(
      controller: controller.nameEditTextController,
      hintText: "lbl_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildAddressEditText() {
    return CustomTextFormField(
      controller: controller.addressEditTextController,
      hintText: "lbl_address".tr,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildCreateButton() {
    return CustomElevatedButton(
      height: 50.v,
      width: 163.h,
      text: "lbl_create".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 26.adaptSize,
          width: 26.adaptSize,
        ),
      ),
      buttonTextStyle: theme.textTheme.headlineSmall!,
    );
  }
}
