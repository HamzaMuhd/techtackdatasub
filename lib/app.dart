import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:techtackdatasub/features/authentication/screens/login/login.dart';
import 'package:techtackdatasub/features/authentication/screens/onboarding/onboarding.dart';
import 'package:techtackdatasub/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFirstTime = GetStorage().read('isFirstTime') ?? true;
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: isFirstTime ? const OnBoardingScreen() : LoginScreen(),
    );
  }
}
