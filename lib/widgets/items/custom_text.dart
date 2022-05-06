import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  TextStyle myStyle;

  CustomText({Key? key, required this.text, required this.myStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}
