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
      return Container();
    }

    Widget contentIsi() {
      return Container();
    }

    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          headerContent(),
        ],
      ),
    );
  }
}
