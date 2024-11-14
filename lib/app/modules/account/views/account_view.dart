import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utilities/colors.dart';
import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        title: Text(
          'My Account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.darkskyblue,
        foregroundColor: AppColor.white,
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/image2.jpg')
                            as ImageProvider,
                        backgroundColor: Colors.transparent,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: IconButton(
                            iconSize: 20.0,
                            icon: Icon(Icons.add_a_photo_outlined,
                                color: AppColor.darkskyblue),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.toNamed('/mycourse');
                  },
                  child: Row(
                    children: [
                      Text(
                        'My Courses',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColor.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  color: AppColor.white,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/checkout');
                  },
                  child: Row(
                    children: [
                      Text(
                        'Checkout',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColor.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  color: AppColor.white,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/setting');
                  },
                  child: Row(
                    children: [
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColor.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  color: AppColor.white,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/privacy-policy');
                  },
                  child: Row(
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColor.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  color: AppColor.white,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/terms-of-service');
                  },
                  child: Row(
                    children: [
                      Text(
                        'Terms of Service',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColor.white,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
