import 'package:flutter/material.dart';
import 'package:food_recipt/providers/categoryProvider.dart';
import 'package:provider/provider.dart';
import 'package:food_recipt/screen/cardModel.dart';
import 'package:food_recipt/screen/searchMenu.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';
import 'package:food_recipt/utilities/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Home();
}

class _Home extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    getFood();
    super.initState();
  }

  getFood() async {
    await Provider.of<CategoryProvider>(context, listen: false).getCategorys();
  }

  @override
  Widget build(BuildContext context) {
    CategoryProvider categoryProvider = Provider.of<CategoryProvider>(context);
    Widget headerContent() {
      const textContent1 = 'Lets Order\nFood Here...';
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(
                  top: SizeConfig.blockVertical * 4,
                  left: SizeConfig.blockHorizontal * 3),
              child: Text(textContent1,
                  style: TextStyle(
                    color: color1,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ))),
          Container(
              margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 20),
              child: const Icon(Icons.notifications,
                  color: Colors.black, size: 30)),
          Container(
              margin: EdgeInsets.only(right: SizeConfig.blockHorizontal * 10),
              child: const Icon(Icons.shopping_cart,
                  color: Colors.black, size: 30)),
        ],
      );
    }

    Widget contentIsi() {
      return Container(
          margin: EdgeInsets.only(top: SizeConfig.blockVertical * 30),
          height: SizeConfig.blockVertical * 70,
          width: SizeConfig.blockHorizontal * 100,
          decoration: BoxDecoration(
              color: color1,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )));
    }

    Widget textForm() {
      return Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 27,
              left: SizeConfig.blockHorizontal * 5),
          height: SizeConfig.blockVertical * 30,
          width: SizeConfig.blockHorizontal * 90,
          child: Column(
            children: [
              SearchMenu('Search Menu...', controller),
            ],
          ));
    }

    Widget textDataList() {
      return Container(
        margin: EdgeInsets.only(top: SizeConfig.blockVertical * 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: const EdgeInsets.only(left: 15),
                child: const Text('List Food :',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ))),
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: const Text('See All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ))),
            ),
          ],
        ),
      );
    }

    Widget contentArea() {
      return Container(
        margin: EdgeInsets.only(top: SizeConfig.blockVertical * 45),
        height: SizeConfig.blockVertical * 70,
        width: SizeConfig.blockHorizontal * 100,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: categoryProvider.getCategory
                .map((category) => CardModel(category))
                .toList(),
          ),
        ),
      );
    }

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            headerContent(),
            contentIsi(),
            textForm(),
            textDataList(),
            contentArea(),
          ],
        ),
      ),
    );
  }
}
