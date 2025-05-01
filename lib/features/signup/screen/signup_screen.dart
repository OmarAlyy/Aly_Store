// signup_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aly_store/common/widgets/login_signup/form_divider.dart';
import 'package:aly_store/common/widgets/login_signup/social_auth_buttons.dart';
import 'package:aly_store/utils/constants/sizes.dart';
import 'package:aly_store/utils/constants/text_strings.dart';
import 'package:aly_store/utils/helpers/helper_functions.dart';
import '../widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              LoginDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SocialAuthButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
