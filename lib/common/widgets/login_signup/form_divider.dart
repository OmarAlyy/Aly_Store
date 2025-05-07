import 'package:flutter/material.dart';

import 'package:aly_store/utils/constants/colors.dart';
import 'package:aly_store/utils/helpers/helper_functions.dart';

class LoginDivider extends StatelessWidget
{
    const LoginDivider({super.key, required this.dividerText});

    final String dividerText;

    @override
    Widget build(BuildContext context) 
    {
        final isDark = THelperFunctions.isDarkMode(context);

        return Row(
            children: [
                Expanded(
                    child: Divider(
                        thickness: .5,
                        color: isDark ? TColors.darkGrey : TColors.grey
                    )
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child:
                    Text(dividerText, style: Theme.of(context).textTheme.labelMedium)
                ),
                Expanded(
                    child: Divider(
                        thickness: .5,
                        color: isDark ? TColors.darkGrey : TColors.grey
                    )
                )
            ]
        );
    }
}
