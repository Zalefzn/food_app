import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _Banner();
}

class _Banner extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    Widget headersContent() {
      return Container();
    }

    SizeConfig().init(context);
    return Scaffold(
      body: Column(),
    );
  }
}
