import 'dart:convert';
import 'package:blackford/api_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wp_woocommerce/models/products.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeController extends GetxController {
  var currentBanner = 0.obs;
  Map<String, dynamic>? retrievedData;
  var allproducts = <WooProduct>[].obs;

  @override
  void onInit() async {
    await getDataFromSharedPreferences();
    await getProducts();
    super.onInit();
  }

Future<void> logUserOut() async {
  try {
    await woocommerce.logUserOut();  
  } catch (e) {
    print("Error invalidating token: $e");
  }
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('userrecord');
  await prefs.remove('token');
  Get.snackbar("Logout Successful", "You have been logged out.", backgroundColor: Colors.green, colorText: Colors.white);
  Get.offAllNamed('/login');
}

  Future<void> getDataFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonData = prefs.getString('userrecord') ?? '';
    retrievedData = jsonDecode(jsonData);
    print("Retrieved Data: $retrievedData");
    }




Future<void> getProducts() async {
  try {
    final products = await woocommerce.getProducts(perPage: 20);  
    allproducts.value = products;
    print("Fetched Products: ${allproducts.value.toString()}");

    // for (var product in products) {
    //   print('Product ID: ${product.id}');
    //   print('Name: ${product.name}');
    //   print('Price: ${product.price}');
    //   print('Status: ${product.status}');

      // Display categories
      // if (product.categories != null && product.categories!.isNotEmpty) {
      //   print('Categories:');
      //   for (var category in product.categories!) {
      //     print('  - ${category.name}');
      //   }
      // } else {
      //   print('No categories available');
      // }

      // // Display images
      // if (product.images != null && product.images!.isNotEmpty) {
      //   print('Images:');
      //   for (var image in product.images!) {
      //     print('  - ${image.src}');  // Image URL
      //   }
      // } else {
      //   print('No images available');
      // }

      // // Display description
      // print('Description: ${product.description ?? "No description available"}');
      // print('Short Description: ${product.shortDescription ?? "No short description available"}');
    
  } catch (e) {
    print("Error fetching products: $e");
  }
}




}
