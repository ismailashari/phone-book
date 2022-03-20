import 'package:flutter/material.dart';

class CompAdd extends StatelessWidget {
  final String? nameTitle;
  final Icon? prefixIcon;
  final Color? fillColor;
  // final double boxWidth;
  final double boxHeight;

  const CompAdd({
    Key? key,
    this.nameTitle,
    this.prefixIcon,
    this.fillColor,
    // this.boxWidth = ,
    this.boxHeight = 53,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: boxHeight,
      // width: boxWidth,
      child: TextField(
        style: TextStyle(
          color: Color(0xFFC4C4C4),
        ),
        decoration: InputDecoration(
            fillColor: fillColor,
            filled: true,
            border: OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: prefixIcon,
            labelText: nameTitle,
            labelStyle: TextStyle(color: Color(0xFF353434))),
      ),
    );
  }
}
