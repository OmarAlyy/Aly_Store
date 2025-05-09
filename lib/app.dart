import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:aly_store/utils/constants/text_strings.dart';
import 'package:aly_store/utils/theme/theme.dart';

import 'features/onboarding/screen/onboarding.dart';

class App extends StatelessWidget
{
    const App({super.key});

    @override
    Widget build(BuildContext context) 
    {
        return GetMaterialApp(
            title: TTexts.appName,
            themeMode: ThemeMode.system,
            theme: TAppTheme.lightTheme,
            darkTheme: TAppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            home: const OnboardingScreen()
        );
    }
}
