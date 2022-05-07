import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String? textHint;
  final IconData? icon;
  final bool isIcon;

  const CustomTextFromField(
      {Key? key, required this.textHint, this.icon, required this.isIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // ---> Signup TextField
      isIcon == true
        ? TextFormField(
            // cursorHeight: MediaQuery.of(context).size.height * 0.042,
            cursorColor: Theme.of(context).cursorColor,
            // initialValue: 'Input text',
            // maxLength: 1,
            decoration: InputDecoration(
                // labelStyle: TextStyle(
                //   color: Color(0xFF6200EE),
                // ),
                hintText: textHint,
                prefixIcon: Icon(
                  icon,
                  color: Colors.black,
                )
                // helperText: 'Helper text',
                // suffixIcon: Icon(
                //   Icons.check_circle,
                // ),
                // enabledBorder: const UnderlineInputBorder(
                //   borderSide: BorderSide(color: Color(0xFF6200EE)),
                // ),
                ),
          )


    // ---> Login TextField
        : TextFormField(
            decoration: InputDecoration(
              hintText: textHint,
            ),
          );
  }
}
