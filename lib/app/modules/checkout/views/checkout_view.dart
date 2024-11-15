import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utilities/colors.dart';
import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.darkskyblue,
        foregroundColor: AppColor.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Payment Steps
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.shopping_bag, color: AppColor.darkskyblue),
                    Text(
                      'My Cart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.darkskyblue,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.payment, color: Colors.grey),
                    Text(
                      'Payment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // Payment Summary
            Text(
              'Payment Summary',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.darkskyblue,
              ),
            ),
            SizedBox(height: 10),
            _buildSummaryRow('Sub Total', '\$88.00'),
            _buildSummaryRow('Discount', '-\$4.50', isDiscount: true),
            _buildSummaryRow('Tax', '+\$3.00'),
            SizedBox(height: 20),

            // Shipping Options
            Text(
              'Shipping',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.darkskyblue,
              ),
            ),
            RadioListTile(
              title: Text("Flat Rate"),
              value: "flat",
              groupValue: "local",
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text("Free"),
              value: "free",
              groupValue: "local",
              onChanged: (value) {},
            ),
            RadioListTile(
              title: Text("Local Pickup"),
              value: "local",
              groupValue: "local",
              onChanged: (value) {},
            ),
            SizedBox(height: 20),

            // Total Payment Amount
            _buildSummaryRow(
              'Total Payment Amount',
              '\$89.00',
              isTotal: true,
            ),
            SizedBox(height: 20),

            // Billing Address
            Text(
              'Billing Address',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.darkskyblue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '100 Jericho Turnpike, Westbury, New York,\n'
              'NY 11590, United States (USA)\n'
              '56481535',
              style: TextStyle(color: Colors.grey),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'Default',
                style: TextStyle(color: AppColor.darkskyblue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for summary rows
  Widget _buildSummaryRow(String title, String amount,
      {bool isDiscount = false, bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: isTotal ? 18 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? AppColor.darkskyblue : Colors.black,
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: isTotal ? 18 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isDiscount ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
