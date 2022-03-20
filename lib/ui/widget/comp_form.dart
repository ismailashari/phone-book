// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CompForm extends StatelessWidget {
  final String? nameTitle;
  final Icon? prefixIcon;
  final bool obscureText;
  final Color? fillColor;

  const CompForm({
    Key? key,
    this.nameTitle,
    this.prefixIcon,
    this.obscureText = false,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      child: TextField(
        obscureText: obscureText,
        style: TextStyle(color: Color(0xFFB6AFAF)),
        decoration: InputDecoration(
            fillColor: fillColor,
            filled: true,
            border: OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: prefixIcon,
            labelText: nameTitle,
            labelStyle: TextStyle(color: Color(0xFFB6AFAF))),
      ),
    );
  }
}
