import 'package:flutter/material.dart';
import 'package:food_recipt/screen/splash_screen.dart';
import 'package:food_recipt/widgets/banner_page/banner.dart';
import 'package:food_recipt/widgets/homa_page/home_page.dart';
import 'package:food_recipt/widgets/login_page/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => SplashScreen(),
      '/banner': (context) => const BannerPage(),
      '/loginPage': (context) => const LoginPage(),
      '/homePage': (context) => const HomePage()
    });
  }
}
