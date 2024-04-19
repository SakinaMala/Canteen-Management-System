import '../core/app_export.dart';
import '../presentation/android_small_two_screen/android_small_two_screen.dart';
import '../presentation/android_small_two_screen/binding/android_small_two_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/sign_up_pg_screen/binding/sign_up_pg_binding.dart';
import '../presentation/sign_up_pg_screen/sign_up_pg_screen.dart';
import '../presentation/welcome_screen/binding/welcome_binding.dart';
import '../presentation/welcome_screen/welcome_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String signUpPgScreen = '/sign_up_pg_screen';

  static const String mainPage = '/main_page';

  static const String androidSmallOnePage = '/android_small_one_page';

  static const String androidSmallTwoScreen = '/android_small_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [WelcomeBinding()],
    ),
    GetPage(
      name: signUpPgScreen,
      page: () => SignUpPgScreen(),
      bindings: [SignUpPgBinding()],
    ),
    GetPage(
      name: androidSmallTwoScreen,
      page: () => AndroidSmallTwoScreen(),
      bindings: [AndroidSmallTwoBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [WelcomeBinding()],
    )
  ];
}
