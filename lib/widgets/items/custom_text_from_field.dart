import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String? textHint;
  final IconData? icon;
  final bool isIcon;
  final bool isPassword;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;
  final TextEditingController? controller;

  const CustomTextFromField(
      {Key? key,
      required this.textHint,
      this.icon,
      required this.isIcon,
      this.validator,
      this.onSaved,
      this.textInputType,
      this.controller,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // ---> Signup TextField
        isIcon == true
            ? TextFormField(
                controller: controller,
                keyboardType: textInputType ?? TextInputType.text,
                autocorrect: false,
                obscureText: isPassword == true ? true : false,
                validator: validator,
                onSaved: onSaved!,
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
                controller: controller,
                validator: validator,
                onSaved: onSaved!,
                keyboardType: textInputType ?? TextInputType.text,
                obscureText: isPassword == true ? true : false,
                decoration: InputDecoration(
                  hintText: textHint,
                ),
              );
  }
}
