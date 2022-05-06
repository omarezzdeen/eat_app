import 'package:eat_app/utils/images.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class CustomSimpleElevated extends StatelessWidget {
  final String text;
  final double width, height;
  final Color color, textColor;

  CustomSimpleElevated(
      {required this.text,
        required this.width,
        required this.height,
        required this.color,
        required this.textColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        // background
        onPrimary: Colors.white,
        // foreground
        elevation: 3.0,
        minimumSize: Size(size.width * width, size.height * .06),
        // shape: const StadiumBorder(),
      ),
      onPressed: () => Navigator.of(context).pushNamed(Routs.bottomNavigationScreen),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * .03,
          ),
          Text(
            text,
            style:
            Theme.of(context).textTheme.button!.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
