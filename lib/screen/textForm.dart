import 'package:flutter/material.dart';
import 'package:food_recipt/utilities/mediaSize/mediaSize.dart';

class TextForm extends StatefulWidget {
  final bool scureText;
  final String text;
  final String hintText;
  final TextEditingController controller;

  const TextForm(this.text, this.scureText, this.controller, this.hintText,
      {Key? key})
      : super(key: key);

  @override
  State<TextForm> createState() => _Form();
}

class _Form extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(widget.text,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        ),
        SizedBox(height: SizeConfig.blockVertical * 2),
        Container(
          height: SizeConfig.blockVertical * 8,
          width: SizeConfig.blockHorizontal * 80,
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.scureText,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.grey[700]),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        )
      ],
    );
  }
}
