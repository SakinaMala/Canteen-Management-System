import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/main_model.dart';

/// A controller class for the MainPage.
///
/// This class manages the state of the MainPage, including the
/// current mainModelObj
class MainController extends GetxController {
  MainController(this.mainModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<MainModel> mainModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
