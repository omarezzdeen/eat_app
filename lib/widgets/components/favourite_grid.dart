import 'package:eat_app/widgets/items/item_favourite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/foods.dart';

class FavouriteGrid extends StatelessWidget {
  const FavouriteGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final food = Provider.of<Foods>(context);
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      itemCount: food.items.length,
      itemBuilder: (content, index) {
        final item = food.items[index];
        return ItemFavourite(
          id: item.id,
          name: item.name,
          image: item.image,
          rating: item.rating,
          category: item.category,
          price: item.price,
          isFavourite: true,
        );
      },
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
