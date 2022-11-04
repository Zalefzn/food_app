import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _Register();
}

class _Register extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Widget headerContent() {
      return Container();
    }

    SizeConfig().init(context);
    return Scaffold();
  }
}
