import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Color color;

  const ItemDetails({Key? key, required this.title, required this.subtitle, required this.image, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 43,
          height: 43,
        margin: EdgeInsets.only(right: size.width * 0.02),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: color,
        ),
        child: Center(child: Image.asset(image, fit: BoxFit.cover,)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodyText1),
            Text(subtitle, style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey, fontSize: 15.0)),
          ],
        ),

      ],
    );
  }
}
