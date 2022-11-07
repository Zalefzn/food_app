import 'package:flutter/material.dart';
import 'package:food_recipt/screen/textForm.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';
import 'package:food_recipt/utilities/theme/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _Register();
}

class _Register extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController username = TextEditingController();
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    Widget headerContent() {
      return Container(
        child: Text('REGISTER YOUR\nACCOUNT HERE...',
            style: TextStyle(
              color: color1,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            )),
        margin: EdgeInsets.only(
            top: SizeConfig.blockVertical * 10,
            left: SizeConfig.blockHorizontal * 5),
        height: SizeConfig.blockVertical * 20,
        width: SizeConfig.blockHorizontal * 90,
      );
    }

    Widget formContent() {
      return Container(
        height: SizeConfig.blockVertical * 40,
        width: SizeConfig.blockHorizontal * 90,
        child: Column(
          children: [
            TextForm('Username', false, username, 'Rizalfzn16'),
            TextForm('Email', false, email, 'Rizalfzn@gmail.com'),
            TextForm('Password', true, password, '*******')
          ],
        ),
      );
    }

    Widget button() {
      return Container(
          margin: EdgeInsets.only(top: SizeConfig.blockVertical * 5),
          height: SizeConfig.blockVertical * 7,
          width: SizeConfig.blockHorizontal * 80,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 4),
            ),
          ], color: color1, borderRadius: BorderRadius.circular(30)),
          child: TextButton(
              onPressed: () {
                setState(() {});
              },
              child: Text('Register',
                  style: TextStyle(
                      color: color2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))));
    }

    Widget textUnder() {
      return Container(
        margin: EdgeInsets.only(top: SizeConfig.blockVertical * 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text('have an account ?'),
            ),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginPage');
              },
              child: const Text('Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )),
            )),
          ],
        ),
      );
    }

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                headerContent(),
                formContent(),
                button(),
                textUnder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
