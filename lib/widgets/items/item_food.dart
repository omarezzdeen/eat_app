import 'package:eat_app/utils/routes.dart';
import 'package:flutter/material.dart';

class ItemFood extends StatelessWidget {
  final String id;
  final String name;
  final String rating;
  final String image;
  final bool isFavourite;

  const ItemFood({
    Key? key,
    required this.id,
    required this.name,
    required this.rating,
    required this.image,
    required this.isFavourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(right: size.width * 0.04),
      child: GestureDetector(
        onTap: () =>
            Navigator.of(context).pushNamed(Routs.detailsScreen, arguments: id),
        child: SizedBox(
          width: size.width * 0.45,
          height: size.height * 0.34,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width * 0.45,
                    height: size.height * 0.26,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.9), BlendMode.dstATop),
                        image: AssetImage(
                          image,
                        ),
                      ),
                    ),
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
              Text(
                name,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 18.0),
              ),
              Text('Pieces 5-7',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.grey)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                    size: 15.0,
                  ),
                  Text(
                    rating,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 12.0),
                  ),
                  Text(
                    '(323 ratings)',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.grey, fontSize: 10.0),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02, vertical: 1.0),
                      child: Text(
                        'Free Delivery',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 9.0, color: Colors.white),
                      ),
                    ),
                    color: Theme.of(context).primaryColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
