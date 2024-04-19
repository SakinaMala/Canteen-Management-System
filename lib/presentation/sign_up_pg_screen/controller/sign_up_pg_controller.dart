import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/sign_up_pg_model.dart';

/// A controller class for the SignUpPgScreen.
///
/// This class manages the state of the SignUpPgScreen, including the
/// current signUpPgModelObj
class SignUpPgController extends GetxController {
  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  Rx<SignUpPgModel> signUpPgModelObj = SignUpPgModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
    nameEditTextController.dispose();
    addressEditTextController.dispose();
  }
}
