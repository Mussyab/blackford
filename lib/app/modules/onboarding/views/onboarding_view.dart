import 'package:blackford/utilities/colors.dart';
import 'package:blackford/widgets/custom_tab_page_selector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        height: 200,
                        image: AssetImage('assets/images/Logo.png'),
                      ),
                      Text(
                        "Welcome to Blackford",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppColor.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s .",
                          style: TextStyle(color: AppColor.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        height: 200,
                        image: AssetImage('assets/images/Logo.png'),
                      ),
                      Text(
                        "Welcome to Blackford",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppColor.white),
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s .",
                        style: TextStyle(color: AppColor.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        height: 200,
                        image: AssetImage('assets/images/Logo.png'),
                      ),
                      Text(
                        "Welcome to Air Blackford",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppColor.primarycolor),
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s .",
                        style: TextStyle(color: AppColor.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomTabPageSelector(controller: controller.tabController),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 30.0),
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: controller.currentIndex.value == 0
                          ? null
                          : () {
                              controller.tabController.animateTo(
                                (controller.tabController.index - 1)
                                    .clamp(0, 2),
                              );
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.darkskyblue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'Previous',
                        style: TextStyle(
                          color: AppColor.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (controller.currentIndex.value == 2) {
                          controller.completeOnboarding();
                        } else {
                          controller.tabController.animateTo(
                            (controller.tabController.index + 1).clamp(0, 2),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            bottomLeft: Radius.circular(16.0),
                          ),
                        ),
                      ),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 400),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return FadeTransition(
                              opacity: animation, child: child);
                        },
                        child: Text(
                          controller.currentIndex.value == 2
                              ? 'Finish'
                              : 'Next',
                          key: ValueKey<String>(
                              controller.currentIndex.value == 2
                                  ? 'Finish'
                                  : 'Next'),
                          style: TextStyle(
                            color: AppColor.primarycolor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
