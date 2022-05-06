import 'package:flutter/material.dart';

class ItemProfile extends StatelessWidget {
  final String title;
  final String image;
  final bool isChecked;
  const ItemProfile({Key? key, required this.title, required this.image, this.isChecked = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        SizedBox(width: size.width * 0.05),
        Text(
          title,
          maxLines: 1,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const Spacer(),
        isChecked == true ? Image.asset(
          'assets/images/back (1).png',
          fit: BoxFit.cover,
        ): Switch(value: true, onChanged: (value) {}),
        SizedBox(height: size.height * 0.04),
      ],
    );
  }
}
