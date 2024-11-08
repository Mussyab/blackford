import 'package:blackford/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatefulWidget {
  CartView({super.key});

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final List<Map<String, dynamic>> cartItems = [
    {
      "name": "The Great Gatsby",
      "author": "F. Scott Fitzgerald",
      "price": "\$10.99",
      "image": "assets/images/Book-3.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Becoming",
      "author": "Michelle Obama",
      "price": "\$19.99",
      "image": "assets/images/Book-1.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "\$15.99",
      "image": "assets/images/Book-3.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "\$15.99",
      "image": "assets/images/Book-2.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "\$15.99",
      "image": "assets/images/Book-1.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
    {
      "name": "Atomic Habits",
      "author": "James Clear",
      "price": "\$15.99",
      "image": "assets/images/Book-3.png",
      "quantity": 1,
      "selected": true,
      "tags": ["Design", "User Interface"],
    },
  ];

  bool selectAll = false;

  void toggleSelectAll() {
    setState(() {
      selectAll = !selectAll;
      for (var item in cartItems) {
        item['selected'] = selectAll;
      }
    });
  }

  void toggleItemSelection(int index) {
    setState(() {
      cartItems[index]['selected'] = !cartItems[index]['selected'];
      selectAll = cartItems.every((item) => item['selected'] == true);
    });
  }

  void incrementQuantity(int index) {
    setState(() {
      cartItems[index]['quantity'] += 1;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      if (cartItems[index]['quantity'] > 1) {
        cartItems[index]['quantity'] -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.darkskyblue,
        foregroundColor: AppColor.white,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          splashRadius: 20,
                          activeColor: AppColor.white,
                          checkColor: AppColor.darkskyblue,
                          value: item['selected'],
                          onChanged: (val) {
                            toggleItemSelection(index);
                          },
                        ),
                        SizedBox(width: 15),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            height: 120,
                            width: 80,
                            child: Image.asset(
                              item["image"],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width * 0.5,
                                child: Text(
                                  item["name"],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                item["author"],
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                item["price"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 12),
                              SizedBox(
                                height: 25,
                                child: ListView.builder(
                                  itemCount: item["tags"]?.length ?? 0,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, tagIndex) => Container(
                                    margin: EdgeInsets.only(right: 8),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF665230),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        item["tags"]?[tagIndex] ?? "",
                                        style: TextStyle(
                                          color: Color(0xFFD5AC64),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                CupertinoIcons.minus,
                                color: AppColor.brown,
                                size: 18,
                              ),
                              onPressed: () => decrementQuantity(index),
                            ),
                            Text(
                              "${item['quantity']}",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                CupertinoIcons.plus,
                                color: AppColor.brown,
                                size: 18,
                              ),
                              onPressed: () => incrementQuantity(index),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select All",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Checkbox(
                  splashRadius: 20,
                  activeColor: AppColor.white,
                  checkColor: AppColor.darkskyblue,
                  value: selectAll,
                  onChanged: (val) {
                    toggleSelectAll();
                  },
                ),
              ],
            ),
            Divider(height: 20, thickness: 1, color: AppColor.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payment",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$300.00",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: AppColor.yellowish,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              child: Text(
                "Checkout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.3,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(60),
                backgroundColor: AppColor.yellowish,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
