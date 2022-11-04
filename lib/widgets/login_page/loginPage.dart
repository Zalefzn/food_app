import 'package:flutter/material.dart';
import 'package:food_recipt/screen/textForm.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';
import 'package:food_recipt/utilities/theme/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _Login();
}

class _Login extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController username = TextEditingController();
    final TextEditingController password = TextEditingController();

    Widget headerContent() {
      return Container(
        child: Text('LOGIN YOUR\nACCOUNT HERE...',
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

    Widget contentForm() {
      return Container(
        height: SizeConfig.blockVertical * 30,
        width: SizeConfig.blockHorizontal * 90,
        child: Column(
          children: [
            TextForm(
              'Username',
              false,
              username,
              'Rizalfzn16',
            ),
            SizedBox(height: SizeConfig.blockVertical * 2),
            TextForm(
              'Password',
              true,
              password,
              '*******',
            )
          ],
        ),
      );
    }

    Widget button() {
      return Container(
          margin: EdgeInsets.only(top: SizeConfig.blockVertical * 7),
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
                setState(() {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/homePage', (route) => false);
                });
              },
              child: Text('Login',
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
              child: const Text('Dont have an account ?'),
            ),
            Container(
                child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registerPage');
              },
              child: const Text('Register',
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
                contentForm(),
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
