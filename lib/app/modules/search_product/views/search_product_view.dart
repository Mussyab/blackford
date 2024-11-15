import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blackford/utilities/colors.dart';

import '../../../../widgets/product_card.dart';

class SearchProductView extends StatefulWidget {
  const SearchProductView({super.key});

  @override
  _SearchProductViewstate createState() => _SearchProductViewstate();
}

class _SearchProductViewstate extends State<SearchProductView> {
  final List<Map<String, dynamic>> products = [
    {
      "name": "The Great Gatsby",
      "author": "F. Scott Fitzgerald",
      "price": "10.99",
      "image": "assets/images/Book-3.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Becoming",
      "author": "Michelle Obama",
      "price": "19.99",
      "image": "assets/images/Book-1.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "15.99",
      "image": "assets/images/Book-3.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "15.99",
      "image": "assets/images/Book-2.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "15.99",
      "image": "assets/images/Book-1.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "15.99",
      "image": "assets/images/Book-3.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: AppColor.darkskyblue,
        foregroundColor: AppColor.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search products...',
                  hintStyle: TextStyle(
                    color: Color(0xFFB8B8B8),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFB8B8B8),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
                style: TextStyle(
                  color: AppColor.darkskyblue,
                ),
                onChanged: (query) {},
              ),
              SizedBox(height: 20),
              Text(
                'All Products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 15),
              ListView.builder(
                padding: EdgeInsets.only(top: 20),
                shrinkWrap: true,
                itemCount: products.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () => Get.toNamed("/single-product"),
                    child: SizedBox(
                      height: 120,
                      child: productCard(
                        name: products[index]["name"]!,
                        author: products[index]["author"]!,
                        price: products[index]["price"]!,
                        image: products[index]["image"]!,
                        tags: List<String>.from(products[index]["tags"]),
                        context: context,
                        index: index,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
