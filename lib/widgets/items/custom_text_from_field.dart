import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String? textHint;
  final IconData? icon;
  final bool isIcon;

  CustomTextFromField(
      {required this.textHint, this.icon, required this.isIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // cursorHeight: MediaQuery.of(context).size.height * 0.042,
      cursorColor: Theme.of(context).cursorColor,
      // initialValue: 'Input text',
      // maxLength: 1,
      decoration: InputDecoration(
        // labelStyle: TextStyle(
        //   color: Color(0xFF6200EE),
        // ),
        hintText: textHint,
        prefixIcon:  isIcon == true
            ? Icon(
          icon,
          color: Colors.black,
        )
            : const SizedBox(width: 0,height: 0,),
        // helperText: 'Helper text',
        // suffixIcon: Icon(
        //   Icons.check_circle,
        // ),
        // enabledBorder: const UnderlineInputBorder(
        //   borderSide: BorderSide(color: Color(0xFF6200EE)),
        // ),
      ),
    );
  }
}
