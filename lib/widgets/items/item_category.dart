import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String name;
  final String image;
  const ItemCategory({Key? key, required this.name, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(right: size.width * 0.079),
      child: Column(
        children: [
          Material(
            shadowColor: Theme.of(context).primaryColor.withOpacity(0.2),
            elevation: 10,
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: size.width * 0.13,
              height: size.height * 0.060,
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(name, style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
