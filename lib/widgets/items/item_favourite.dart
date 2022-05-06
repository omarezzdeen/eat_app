import 'package:eat_app/utils/images.dart';
import 'package:eat_app/utils/routes.dart';
import 'package:flutter/material.dart';

class ItemFavourite extends StatelessWidget {
  const ItemFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Routs.detailsScreen),
      child: Card(
        elevation: 10.0,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    ImageResources.testImage,
                    fit: BoxFit.cover,
                    width: size.width,
                    height: size.height * 0.178,
                  ),
                  Positioned(
                    top: size.height * 0.014,
                    right: size.width * 0.026,
                    child: Container(
                      width: size.width * 0.072,
                      height: size.height * 0.033,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.favorite,
                            color: Theme.of(context).primaryColor, size: 18.0),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Chicken Drumstick',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w600)),
                  Text('Pieces 5-7',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 13.0)),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.yellow),
                  Text('4.7',
                      style: Theme.of(context)
                          .textTheme
                          .overline!
                          .copyWith(fontSize: 13.0)),
                  const Spacer(),
                  Text(
                    '\$12',
                    style: Theme.of(context).textTheme.overline!.copyWith(
                          fontSize: 13.0,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
