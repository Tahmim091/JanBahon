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
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (ctx) => const SplashScreen(),
        RegistrationPageScreen.routeName: (ctx) =>
            const RegistrationPageScreen(),
        LoginPageScreen.routeName: (ctx) => LoginPageScreen(),
        MainNavigator.routeName: (ctx) => const MainNavigator(),
        EditProfilePage.routeName: (ctx) => const EditProfilePage(),
        ProfileViewScreen.routeName: (ctx) => const ProfileViewScreen(),
        FriendListScreen.routeName: (ctx) => const FriendListScreen(),
        EditVehicleScreen.routeName: (ctx) => const EditVehicleScreen(),
        AddVehicleScreen.routeName: (ctx) => const AddVehicleScreen(),
      },
    );
  }
}
