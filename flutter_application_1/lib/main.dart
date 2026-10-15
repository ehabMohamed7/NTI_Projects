import 'package:flutter/material.dart';
import 'package:flutter_application_1/welcom_screen.dart';

import 'on_boarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardingScreen(),

      routes: {
        'onboarding': (context) => const OnBoardingScreen(),
        'WelcomScreen': (context) => const WelcomScreen(),
      },
    );
  }
}
