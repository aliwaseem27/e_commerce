import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({super.key});

  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          OnboardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
