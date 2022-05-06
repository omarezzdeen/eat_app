import 'package:eat_app/utils/images.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String? image;
  final double width, height;
  final Color color, textColor;
  final bool isIcon;
  final double borderRadius;
  final VoidCallback onPressed;


  const CustomElevatedButton(
      {required this.text,
      required this.width,
      required this.height,
      required this.color,
      this.image,
      required this.isIcon,
      required this.onPressed,
      this.borderRadius = 4.0,
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        // shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isIcon == true ? Image.asset(
            image!,
            fit: BoxFit.cover,
          ): const SizedBox(width: 0, height: 0),
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
