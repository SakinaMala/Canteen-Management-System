import '../../../core/app_export.dart';
import '../controller/sign_up_pg_controller.dart';

/// A binding class for the SignUpPgScreen.
///
/// This class ensures that the SignUpPgController is created when the
/// SignUpPgScreen is first loaded.
class SignUpPgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPgController());
  }
}
