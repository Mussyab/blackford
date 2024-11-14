import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blackford/utilities/colors.dart';
import '../controllers/search_product_controller.dart';

class SearchProductView extends GetView<SearchProductController> {
  const SearchProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Adjust the height as needed
        child: AppBar(
          backgroundColor: AppColor.darkskyblue,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10), // Adds space around the field
            child: Container(
              height:
                  40, // Set height to make the search field smaller than the app bar
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search products...',
                  hintStyle: TextStyle(color: Colors.black54),
                  prefixIcon: Icon(Icons.search, color: Colors.black54),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 10), // Center align the text vertically
                ),
                style: TextStyle(color: Colors.black),
                onChanged: (query) {},
              ),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // Content goes here
      ),
    );
  }
}
