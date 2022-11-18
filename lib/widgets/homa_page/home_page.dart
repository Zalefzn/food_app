import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Home();
}

class _Home extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget headerContent() {
      return Container(
        margin: EdgeInsets.only(top: SizeConfig.blockVertical * 40),
        child: Center(
            child: Text('Hallo',
                style: TextStyle(
                  fontSize: 50,
                ))),
      );
    }

    Widget contentIsi() {
      return Container();
    }

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [headerContent(), contentIsi()],
        ),
      ),
    );
  }
}
