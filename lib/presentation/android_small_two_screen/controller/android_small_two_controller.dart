import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/android_small_two_model.dart';

/// A controller class for the AndroidSmallTwoScreen.
///
/// This class manages the state of the AndroidSmallTwoScreen, including the
/// current androidSmallTwoModelObj
class AndroidSmallTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController categoryvalueController = TextEditingController();

  TextEditingController burgersvalueController = TextEditingController();

  TextEditingController saladsvalueoneController = TextEditingController();

  Rx<AndroidSmallTwoModel> androidSmallTwoModelObj = AndroidSmallTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    categoryvalueController.dispose();
    burgersvalueController.dispose();
    saladsvalueoneController.dispose();
  }
}
