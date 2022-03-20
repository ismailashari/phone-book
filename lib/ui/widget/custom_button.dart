import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnTitle;
  final Function() onClick;
  const CustomButton({Key? key, required this.btnTitle, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 307,
      // margin:
      //     const EdgeInsets.only(bottom: 51, left: 27, right: 26, top: 27),
      decoration: const BoxDecoration(
        color: Color(0xFFE94560),
        // borderRadius: BorderRadius.circular(20)
      ),
      child: TextButton(
        onPressed: onClick,
        child: Text(
          btnTitle,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
