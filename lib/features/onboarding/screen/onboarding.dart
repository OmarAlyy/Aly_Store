import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aly_store/features/onboarding/controller/onboarding_controller.dart';
import 'package:aly_store/features/onboarding/widgets/onboardin_next_button.dart';
import 'package:aly_store/utils/constants/image_strings.dart';
import 'package:aly_store/utils/constants/text_strings.dart';

import '../widgets/onboarding_dots_navigation.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget
{
    const OnboardingScreen({super.key});

    @override
    Widget build(BuildContext context) 
    {
        final controller = Get.put(OnBoardingController());

        return Scaffold(
            body: Stack(children: [
                    PageView(
                        controller: controller.pageController,
                        onPageChanged: (index) => controller.updatePageIndicator(index),
                        children: [
                            OnBoardingPage(
                                image: TImages.onBoardingImage1,
                                title: TTexts.onBoardingTitle1,
                                subTitle: TTexts.onBoardingSubTitle1
                            ),
                            OnBoardingPage(
                                image: TImages.onBoardingImage2,
                                title: TTexts.onBoardingTitle2,
                                subTitle: TTexts.onBoardingSubTitle2
                            ),
                            OnBoardingPage(
                                image: TImages.onBoardingImage3,
                                title: TTexts.onBoardingTitle3,
                                subTitle: TTexts.onBoardingSubTitle3
                            )
                        ]
                    ),
                    OnBoardingSkip(),
                    OnboardingDotsNavigation(),
                    OnboardinNextButton()
                ])
        );
    }
}
