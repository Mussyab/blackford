import 'dart:convert';

import 'package:blackford/api_key.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var currentBanner = 0.obs;
  dynamic retrievedData;

  @override
  void onInit() {
    getDataFromSharedPreferences();
    super.onInit();
  }

Future<void> logUserOut() async {
  // Call the server to invalidate the token (if supported)
  try {
    await woocommerce.logUserOut();  // Assuming a logout API exists
  } catch (e) {
    print("Error invalidating token: $e");
  }

  // Clear shared preferences
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('userrecord');
  await prefs.remove('token');

  // Show a logout success message
  Get.snackbar("Logout Successful", "You have been logged out.", backgroundColor: Colors.green, colorText: Colors.white);

  // Navigate to the login screen
  Get.offAllNamed('/login');
}

  Future<void> getDataFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonData = prefs.getString('userrecord') ?? '';

    // If data exists, decode it
    retrievedData = jsonDecode(jsonData);
    print("Retrieved Data: $retrievedData");
    }

}
