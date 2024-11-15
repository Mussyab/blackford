import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utilities/colors.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        title: Text(
          'Profile',
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Heading
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.white,
              ),
            ),
            SizedBox(height: 20),

            // Name Field
            Text(
              'Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                labelText: "John Doe",
                enabled: false,
                labelStyle: TextStyle(color: Color(0xFFB8B8B8)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              style: TextStyle(color: AppColor.darkskyblue),
            ),
            SizedBox(height: 20),

            // Date of Birth Field
            Text(
              'Date of Birth',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                labelText: "01/01/2000",
                labelStyle: TextStyle(color: Color(0xFFB8B8B8)),
                filled: true,
                enabled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              style: TextStyle(color: AppColor.darkskyblue),
            ),
            SizedBox(height: 20),

            // Password Field with Change Option
            Text(
              'Password',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Stack(
              children: [
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "*******",
                    labelStyle: TextStyle(color: Color(0xFFB8B8B8)),
                    filled: true,
                    enabled: false,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  style: TextStyle(color: AppColor.darkskyblue),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: AppColor.primarycolor,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Password Change',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.white,
                                  ),
                                ),
                                SizedBox(height: 20),

                                // Old Password Field
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "Enter Old Password",
                                    labelStyle:
                                        TextStyle(color: Color(0xFFB8B8B8)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 15),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                  ),
                                  style: TextStyle(color: AppColor.darkskyblue),
                                ),
                                SizedBox(height: 20),

                                // New Password Field
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "Enter New Password",
                                    labelStyle:
                                        TextStyle(color: Color(0xFFB8B8B8)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 15),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                  ),
                                  style: TextStyle(color: AppColor.darkskyblue),
                                ),
                                SizedBox(height: 20),

                                // Confirm New Password Field
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "Confirm New Password",
                                    labelStyle:
                                        TextStyle(color: Color(0xFFB8B8B8)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 15),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                  ),
                                  style: TextStyle(color: AppColor.darkskyblue),
                                ),
                                SizedBox(height: 30),

                                // Update Button
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.yellowish,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.toNamed('/account');
                                    },
                                    child: Text(
                                      "Update",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Change",
                          style: TextStyle(
                            color: AppColor.darkskyblue,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
