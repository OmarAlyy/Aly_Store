import 'package:flutter/material.dart';

import 'package:aly_store/common/styles/spacing_style.dart';
import 'package:aly_store/utils/constants/sizes.dart';
import 'package:aly_store/utils/constants/text_strings.dart';

import '../../../common/widgets/login_signup/form_divider.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';
import '../../../common/widgets/login_signup/social_auth_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: const [
            // Logo, title & subtitle
            LoginHeader(),

            SizedBox(height: TSizes.spaceBtwSections),

            // Email / password form
            LoginForm(),
            SizedBox(height: TSizes.spaceBtwSections),

            // Divider with “or sign-in with”
            LoginDivider(dividerText: TTexts.orSignInWith),

            SizedBox(height: TSizes.spaceBtwSections),

            // Google / Facebook buttons
            SocialAuthButtons(),
          ],
        ),
      ),
    );
  }
}
