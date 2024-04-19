import '../../../core/app_export.dart';
import '../models/android_small_one_model.dart';

/// A controller class for the AndroidSmallOnePage.
///
/// This class manages the state of the AndroidSmallOnePage, including the
/// current androidSmallOneModelObj
class AndroidSmallOneController extends GetxController {
  AndroidSmallOneController(this.androidSmallOneModelObj);

  Rx<AndroidSmallOneModel> androidSmallOneModelObj;
}
