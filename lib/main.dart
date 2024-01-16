import 'package:flutter/material.dart';
import 'package:innovilage/pages/splash_screen.dart';
import 'package:innovilage/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: darkblue),
      home: SplashScreen(),
    );
  }
}
