import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';

class TableList extends StatefulWidget {
  final String text;
  const TableList(this.text, {Key? key}) : super(key: key);

  @override
  State<TableList> createState() => _Table();
}

class _Table extends State<TableList> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/homePage');
        setState(() {});
      },
      child: Container(
          margin: EdgeInsets.only(top: SizeConfig.blockVertical * 1),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300),
          child: Center(
              child: Text(widget.text,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)))),
    );
  }
}
