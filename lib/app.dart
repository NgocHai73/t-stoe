import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:t_store/features/Authentication/screens/onboarding/onboarding.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/theme/theme.dart';

import 'features/Authentication/screens/signup/signup.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
      routes: {
        '/signup': (context) => SignupScreen(),
      }
    );
  }
}