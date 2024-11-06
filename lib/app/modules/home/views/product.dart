import 'package:blackford/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 30,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: productCard(
                name: "Product $index",
                author: "Author $index",
                price: "Price $index",
                image: "assets/images/Banner.png",
                tags: "Tag $index",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
