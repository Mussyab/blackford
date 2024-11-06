// lib/modules/navigation_bar/bindings/navigation_bar_binding.dart
import 'package:get/get.dart';
import 'package:blackford/app/modules/navigation_bar/controllers/navigation_bar_controller.dart';

class NavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    // Add your controller dependencies if needed
    Get.lazyPut<NavigationBarController>(() => NavigationBarController());
  }
}
