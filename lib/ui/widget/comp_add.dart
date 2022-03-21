import 'package:flutter/material.dart';

class CompAdd extends StatelessWidget {
  final String? nameTitle;
  final Icon? prefixIcon;

  const CompAdd({
    Key? key,
    this.nameTitle,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      // height: boxHeight,
      // width: boxWidth,
      child: TextField(
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
            fillColor: const Color(0xFFC4C4C4),
            filled: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: prefixIcon,
            labelText: nameTitle,
            labelStyle: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
