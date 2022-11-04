import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';
import 'package:food_recipt/widgets/banner_page/banner.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _Screen();
}

class _Screen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5),
        () => Navigator.pushNamed(context, '/banner'));
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/logo.png"))),
          ),
        ));
  }
}
