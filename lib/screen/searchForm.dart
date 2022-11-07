import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';

class SearchForm extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  const SearchForm(this.controller, this.hintText, {Key? key})
      : super(key: key);

  @override
  State<SearchForm> createState() => _Search();
}

class _Search extends State<SearchForm> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          height: SizeConfig.blockVertical * 8,
          width: SizeConfig.blockHorizontal * 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: Offset(2, 1),
                ),
              ]),
          child: TextFormField(
            controller: widget.controller,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon:
                  const Icon(Icons.search, color: Colors.black, size: 35),
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.grey[700]),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
