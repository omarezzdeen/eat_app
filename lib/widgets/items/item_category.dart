import 'package:eat_app/utils/images.dart';
import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(right: size.width * 0.079),
      child: Column(
        children: [
          Material(
            shadowColor: Theme.of(context).primaryColor,
            elevation: 10,
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: size.width * 0.13,
              height: size.height * 0.060,
              child: Image.asset(ImageResources.burgerImage),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text('Burger', style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
