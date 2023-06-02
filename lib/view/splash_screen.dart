// ignore_for_file: use_build_context_synchronously
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import './login_page_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return AnimatedSplashScreen(
      splash: Center(
        child: SizedBox(
          child: Image.asset(
            'assets/images/janbahon.PNG',
          ),
        ),
      ),
      backgroundColor: Colors.black,
      nextScreen: LoginPageScreen(),
      splashIconSize: mediaQuery.size.height * 0.3,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 2),
    );
  }
}
