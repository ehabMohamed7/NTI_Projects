import 'package:flutter/material.dart';

import 'splash_view.dart';

void main() => runApp(
  // DevicePreview(enabled: !kReleaseMode, builder: (context) => MovieApp()),
  MovieApp(),
);

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(body: SplashView()),
    );
  }
}
