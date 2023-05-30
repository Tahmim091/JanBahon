import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janbahon_v2/profile_view_screen.dart';
import 'add_vehicle.dart';
import 'edit_profile_page.dart';
import 'edit_vehicle.dart';
import 'friend_list_page.dart';
import 'navigator.dart';
import './login_page_screen.dart';
import './registration_page_screen.dart';
import './splash_screen.dart';

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
        primarySwatch: Colors.blue,
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
      initialRoute: '/',
      routes: {
        '/': (ctx) => const SplashScreen(),
        'rgistrationPage': (ctx) => const RegistrationPageScreen(),
        'loginpage': (ctx) => LoginPageScreen(),
        'nav': (ctx) => const mainNavigator(),
        'edit': (ctx) => const editProfilePage(),
        'profileView': (ctx) => profileViewScreen(),
        'friendList': (ctx) => const friendList(),
        'editVehicle': (ctx) => const editVehicle(),
        'addVehicle': (ctx) => const addVehicle(),
      },
    );
  }
}
