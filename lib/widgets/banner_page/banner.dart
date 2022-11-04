import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';
import 'package:food_recipt/utilities/theme/theme.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _Banner();
}

class _Banner extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    Widget headersContent() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: SizeConfig.blockVertical * 30),
          height: 160,
          width: 160,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/banner1.png'))),
        ),
      );
    }

    Widget contentIsi() {
      return Container(
        height: SizeConfig.blockVertical * 10,
        width: SizeConfig.blockHorizontal * 70,
        child: const Center(
          child: Text(
              'Sebuah Resep Makanan Berkualitas\nyang membantu anda menjadi koki',
              style: TextStyle(
                fontSize: 17,
              )),
        ),
      );
    }

    Widget button() {
      return Container(
          height: SizeConfig.blockVertical * 7,
          width: SizeConfig.blockHorizontal * 70,
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
                      context, '/loginPage', (route) => false);
                });
              },
              child: Text('Next',
                  style: TextStyle(
                      color: color2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))));
    }

    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          headersContent(),
          contentIsi(),
          SizedBox(height: SizeConfig.blockVertical * 25),
          button(),
        ],
      ),
    );
  }
}
