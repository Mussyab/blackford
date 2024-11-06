import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utilities/colors.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.darkskyblue,
        foregroundColor: AppColor.white,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Welcome Back 👋",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25), // Added padding for alignment
                  child: Text(
                    "Sign in to your account",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.white,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
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
                              vertical: 20, horizontal: 15),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        style: TextStyle(
                          color: AppColor.darkskyblue,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: passwordController,
                        obscureText: obscurePassword,
                        decoration: InputDecoration(
                          labelText: "Your Password",
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
                              vertical: 20, horizontal: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(
                                right:
                                    10), // Adjust this value to move it further to the right
                            child: IconButton(
                              icon: Icon(
                                obscurePassword
                                    ? Icons.remove_red_eye
                                    : Icons.remove_red_eye_outlined,
                                color: AppColor.darkskyblue,
                              ),
                              onPressed: () {
                                setState(() {
                                  obscurePassword = !obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),
                        style: TextStyle(
                          color: AppColor.darkskyblue,
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed('/forgot-password');
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed('/login');
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have an Account?",
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/signup');
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/google-icon.png',
                          height: 30,
                          width: 30,
                        ),
                        label: Text(
                          "Sign in with Google",
                          style: TextStyle(color: AppColor.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(60),
                          backgroundColor: AppColor.primarycolor,
                          side: BorderSide(color: AppColor.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/google_logo.png', // Make sure the image is in your assets folder
                          width: 30, // Set the size of the image
                          height: 30, // Adjust as needed
                        ),
                        label: Text(
                          "Sign in with Google",
                          style: TextStyle(color: AppColor.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(60),
                          backgroundColor: AppColor.primarycolor,
                          side: BorderSide(color: AppColor.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
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
