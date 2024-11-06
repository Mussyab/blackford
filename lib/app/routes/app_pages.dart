// lib/app/routes/app_pages.dart
import 'package:blackford/app/modules/navigation_bar/views/navigation_bar_view.dart';
import 'package:get/get.dart';

import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation_bar/bindings/navigation_bar_binding.dart'; // Correctly import the NavigationBarScreen
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/recovery_screen/bindings/recovery_screen_binding.dart';
import '../modules/recovery_screen/views/recovery_screen_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/single_product/bindings/single_product_binding.dart';
import '../modules/single_product/views/single_product_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: Routes.HOME, // Use Routes to reference paths
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.ONBOARDING, // Use Routes to reference paths
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN, // Use Routes to reference paths
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP, // Use Routes to reference paths
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD, // Use Routes to reference paths
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: Routes.SINGLE_PRODUCT, // Use Routes to reference paths
      page: () => const SingleProductView(),
      binding: SingleProductBinding(),
    ),
    GetPage(
      name: Routes.RECOVERY_SCREEN, // Use Routes to reference paths
      page: () => RecoveryScreenView(),
      binding: RecoveryScreenBinding(),
    ),
    GetPage(
      name: Routes.NAVIGATION_BAR, // Use Routes to reference paths
      page: () =>
          NavigationBarScreen(), // Correct reference to NavigationBarScreen
      binding: NavigationBarBinding(),
    ),
  ];
}
