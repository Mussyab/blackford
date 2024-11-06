import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utilities/colors.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.darkskyblue,
        foregroundColor: AppColor.white,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Please enter your email address. You will receive a link to reset your password.",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColor.white,
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: AppColor.white,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Your Email",
                    labelStyle: TextStyle(
                      color: Color(0xFFB8B8B8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 15,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    suffixIcon: emailController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(
                              CupertinoIcons.multiply,
                              color: AppColor.darkskyblue,
                            ),
                            onPressed: () {
                              emailController.clear();
                            },
                          )
                        : null, // Only show the icon when the text is not empty
                  ),
                  style: TextStyle(
                    color: AppColor.darkskyblue,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (text) {
                    // Trigger rebuild to update the suffix icon
                    setState(() {});
                  },
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                  child: Text(
                    "Send Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: AppColor.yellowish,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
