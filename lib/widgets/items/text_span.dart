import 'package:flutter/material.dart';

class TextSpanApp extends StatelessWidget {
  TextAlign textAlign;
  TextStyle textStyle,textStyle2;
  String text;

  TextSpanApp({Key? key,required this.text, required this.textAlign, required this.textStyle, required this.textStyle2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        // text: 'Hello ',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: text,
            style: textStyle,
          ),
          TextSpan(
              text: 'Terms and services, Privacy policy, ',
              style: textStyle2),
          TextSpan(text: 'and ', style: textStyle),
          TextSpan(text: 'Content policy', style: textStyle2),
        ],
      ),
    );
  }
}
