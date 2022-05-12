import 'package:flutter/material.dart';

class CustomTextFromFieldEditProfile extends StatelessWidget {
  final String text;
  final String initialValue;

  const CustomTextFromFieldEditProfile(
      {Key? key, required this.text, required this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          TextFormField(
            initialValue: initialValue,
            autofocus: false,
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
