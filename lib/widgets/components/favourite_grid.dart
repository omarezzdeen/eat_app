import 'package:eat_app/widgets/items/item_favourite.dart';
import 'package:flutter/material.dart';

class FavouriteGrid extends StatelessWidget {
  const FavouriteGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      itemCount: 10,
      itemBuilder: (ctx, i) => const ItemFavourite(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 230,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
    );
  }
}
