import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomePage extends StatelessWidget {
  static const routeName = '/homePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('home'),
    );
  }
}
