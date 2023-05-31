import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/edit_profile_page.dart';
import 'view/login_page_screen.dart';
import 'view/navigator.dart';
import 'view/registration_page_screen.dart';
import 'view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Janbahon',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleSmall: const TextStyle(
                fontSize: 20,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.normal,
              ),
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500,
              ),
              titleLarge: const TextStyle(
                fontSize: 24,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (ctx) => const SplashScreen(),
        RegistrationPageScreen.routeName: (ctx) =>
            const RegistrationPageScreen(),
        LoginPageScreen.routeName: (ctx) => LoginPageScreen(),
        MainNavigator.routeName: (ctx) => const MainNavigator(),
        EditProfilePage.routeName: (ctx) => const EditProfilePage(),
      },
    );
  }
}
