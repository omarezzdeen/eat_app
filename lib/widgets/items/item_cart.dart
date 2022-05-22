import 'package:eat_app/utils/images.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  final String name;
  final String image;
  final double price;

  ItemCart({Key? key, required this.name, required this.image, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0,
      child: SizedBox(
        width: size.width * 0.85,
        height: size.height * 0.08,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.redAccent,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  width: size.width * 0.16,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.06,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width * 0.17,
                  height: size.height * 0.03,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '-',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        '1',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        '+',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
                const Spacer(),
                Text('\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
