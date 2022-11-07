import 'package:flutter/material.dart';
import 'package:food_recipt/screen/searchForm.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';
import 'package:food_recipt/utilities/theme/theme.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _Table();
}

class _Table extends State<TablePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget headerContent() {
      return Container(
        height: SizeConfig.blockVertical * 25,
        width: SizeConfig.blockHorizontal * 100,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            color: color1),
      );
    }

    Widget textContent() {
      const textContent1 = 'Welcome to\nFood Network';
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(
                  top: SizeConfig.blockVertical * 4,
                  left: SizeConfig.blockHorizontal * 3),
              child: const Text(textContent1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ))),
          Container(
              margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 20),
              child: const Icon(Icons.notifications,
                  color: Colors.white, size: 30)),
          Container(
              margin: EdgeInsets.only(right: SizeConfig.blockHorizontal * 10),
              child: const Icon(Icons.shopping_cart,
                  color: Colors.white, size: 30)),
        ],
      );
    }

    Widget textField() {
      return Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 20,
              left: SizeConfig.blockHorizontal * 5),
          height: SizeConfig.blockVertical * 30,
          width: SizeConfig.blockHorizontal * 90,
          child: Column(
            children: [
              SearchForm(controller, 'Search Tables...'),
            ],
          ));
    }

    Widget contentPage() {
      return Container();
    }

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              headerContent(),
              textContent(),
              textField(),
              contentPage(),
            ],
          ),
        ),
      ),
    );
  }
}
