import 'package:get/get.dart';

import '../modules/about_author/bindings/about_author_binding.dart';
import '../modules/about_author/views/about_author_view.dart';
import '../modules/bottom_nav/bindings/bottom_nav_binding.dart';
import '../modules/bottom_nav/views/bottom_nav_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
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
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.SINGLE_PRODUCT,
      page: () => const SingleProductView(),
      binding: SingleProductBinding(),
    ),
    GetPage(
      name: _Paths.RECOVERY_SCREEN,
      page: () => RecoveryScreenView(),
      binding: RecoveryScreenBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_AUTHOR,
      page: () => AboutAuthorView(),
      binding: AboutAuthorBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAV,
      page: () => BottomNavView(),
      binding: BottomNavBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
  ];
}
