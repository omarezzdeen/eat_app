import 'package:eat_app/utils/routes.dart';
import 'package:flutter/material.dart';

class ItemFavourite extends StatelessWidget {
  final String id;
  final String name;
  final String rating;
  final String image;
  final double price;
  final String category;
  final bool isFavourite;

  const ItemFavourite({
    Key? key,
    required this.id,
    required this.name,
    required this.rating,
    required this.image,
    required this.price,
    required this.category,
    required this.isFavourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Routs.detailsScreen),
      child: Card(
        elevation: 6.0,
        shadowColor: Theme.of(context).primaryColor.withOpacity(0.4),
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
                    image,
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
                        child: isFavourite == true
                            ? Icon(
                                Icons.favorite,
                                color: Theme.of(context).primaryColor,
                                size: 18.0,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Theme.of(context).primaryColor,
                                size: 18.0,
                              ),
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
                  Text(name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w600)),
                  Text(category,
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
                  Text(rating,
                      style: Theme.of(context)
                          .textTheme
                          .overline!
                          .copyWith(fontSize: 13.0)),
                  const Spacer(),
                  Text(
                    '\$${price.toStringAsFixed(2)}',
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
