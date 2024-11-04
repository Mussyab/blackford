import 'package:blackford/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blackford",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: AppColor.primarycolor,
        textTheme: GoogleFonts.interTextTheme(
          Get.theme.textTheme
              .apply(bodyColor: AppColor.white, displayColor: AppColor.white),
        ),
      ),
    ),
  );
}
