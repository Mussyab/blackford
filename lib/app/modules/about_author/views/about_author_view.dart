import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart'; // Rating package

import '../../../../utilities/colors.dart';
import '../controllers/about_author_controller.dart';

class AboutAuthorView extends GetView<AboutAuthorController> {
  const AboutAuthorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor, // Background color
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200), // Height of the AppBar
        child: AppBar(
          title: const Text(
            'About Author',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColor.darkskyblue,
          foregroundColor: AppColor.white,
          leading: const Icon(Icons.arrow_back), // Search icon
          elevation: 0, // Remove shadow
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(100), // Space for the image in the AppBar
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50, // The radius of the circle image
                  backgroundImage: AssetImage(
                      'assets/images/Banner.png'), // Correct image path
                  backgroundColor: AppColor.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            const SizedBox(
                height: 80), // To create space for the image and AppBar
            const Text(
              'Author',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This is a description of the author, including their background, achievements, and other relevant details. This paragraph should give the user an understanding of who the author is and what they stand for. You can customize this paragraph with more information.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This paragraph will include some extra details about the author. It will be displayed with padding from the left and right, ensuring that the content is properly spaced and aligned.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Rating stars and rating text below the text
            const Text(
              'Rating',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RatingBarIndicator(
              rating: 4.0, // Example rating
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 20,
              direction: Axis.horizontal,
            ),
            const SizedBox(height: 4),
            const Text(
              '(4.0)', // Rating in brackets
              style: TextStyle(
                fontSize: 12,
                color: AppColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
