// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_recipt/models/category_model.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';

class CardModel extends StatefulWidget {
  CategoryModel category;
  CardModel(this.category, {Key? key}) : super(key: key);
  @override
  State<CardModel> createState() => _Card();
}

class _Card extends State<CardModel> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Container(
        margin: EdgeInsets.only(
            top: SizeConfig.blockVertical * 2,
            bottom: SizeConfig.blockVertical * 2),
        height: SizeConfig.blockVertical * 15,
        width: SizeConfig.blockHorizontal * 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 2),
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.category.pictThumb)),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ],
        ),
      ),
    );
  }
}
