import 'package:flutter/material.dart';

import 'package:aly_store/utils/constants/sizes.dart';
import 'package:aly_store/utils/constants/image_strings.dart';

import '../../../features/login/widgets/circle_icon_button.dart';

class SocialAuthButtons extends StatelessWidget {
  const SocialAuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircleIconButton(
          assetPath: TImages.google,
          onPressed: _onGoogleTap,
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        CircleIconButton(
          assetPath: TImages.facebook,
          onPressed: _onFacebookTap,
        ),
      ],
    );
  }

  static void _onGoogleTap() {
    // TODO: Google sign-in
  }

  static void _onFacebookTap() {
    // TODO: Facebook sign-in
  }
}
