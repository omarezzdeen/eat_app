import 'package:eat_app/utils/images.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class SimpleAppBar extends StatelessWidget {
  final String? name;
  final bool? isBack;
  final Color? color;
  final double? paddingHorizontal, paddingVertical;

  const SimpleAppBar(
      {Key? key,
      this.name,
      this.isBack,
      this.color,
      this.paddingHorizontal,
      this.paddingVertical,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * paddingHorizontal!,
            vertical: size.height * paddingVertical!),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isBack == true
                ? GestureDetector(
                    onTap:  () => Navigator.of(context).pop,
                    child: Image.asset(
                      ImageResources.backImage,
                      color: color,
                      width: size.width * 0.03,
                      height: size.height * 0.03,
                    ),
                  )
                : SizedBox(
                    width: size.width * 0.03,
                    height: size.height * 0.03,
                  ),
            Text(
              name!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18.0, fontWeight: FontWeight.w400, color: color),
            ),
            Icon(
              Icons.notifications,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
