import 'package:flutter/material.dart';

import 'package:aly_store/utils/constants/colors.dart';
import 'package:aly_store/utils/constants/sizes.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.assetPath,
    required this.onPressed,
  });

  final String assetPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: TColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          assetPath,
          width: TSizes.iconMd,
          height: TSizes.iconMd,
        ),
      ),
    );
  }
}
