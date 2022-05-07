import 'package:eat_app/utils/images.dart';
import 'package:flutter/material.dart';

class CustomTextFromFieldSearch extends StatelessWidget {
  final String? textHint;
  final IconData? icon;

  const CustomTextFromFieldSearch({Key? key, required this.textHint, this.icon}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: MediaQuery.of(context).size.height * 0.042,
      // cursorColor: Theme.of(context).cursorColor,
      // initialValue: 'Input text',
      // maxLength: 1,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        fillColor: Colors.white,
        // labelStyle: TextStyle(
        //   color: Color(0xFF6200EE),
        // ),
        hintText: textHint,
        hintMaxLines: 1,
          // labelText: 'Input text',
        prefixIcon: Image.asset(ImageResources.searchImage, height: 20),
        // helperText: 'Helper text',
        suffixIcon: Image.asset(ImageResources.filterImage),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
