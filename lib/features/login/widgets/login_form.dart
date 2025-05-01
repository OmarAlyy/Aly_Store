import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:aly_store/utils/constants/sizes.dart';
import 'package:aly_store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const _AuthField(
            icon: Iconsax.direct_right,
            label: TTexts.email,
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          const _AuthField(
            icon: Iconsax.password_check,
            label: TTexts.password,
            suffix: Icon(Iconsax.eye_slash),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),
          Row(
            children: [
              Checkbox(value: true, onChanged: (_) {}),
              const SizedBox(width: 6),
              const Text(TTexts.rememberMe),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(TTexts.forgetPassword),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child:
            ElevatedButton(onPressed: () {}, child: const Text(TTexts.signIn)),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {}, child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}

class _AuthField extends StatelessWidget {
  const _AuthField({
    required this.icon,
    required this.label,
    this.suffix,
  });

  final IconData icon;
  final String label;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: label,
        suffixIcon: suffix,
      ),
    );
  }
}
