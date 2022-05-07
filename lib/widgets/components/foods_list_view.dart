import 'package:eat_app/widgets/items/item_food.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/foods.dart';

class FoodsListView extends StatelessWidget {
  const FoodsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final food = Provider.of<Foods>(context);
    return ListView.builder(
      padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: food.items.length,
        itemBuilder: (context, index){
        final item = food.items[index];
      return ItemFood(
        id: item.id,
        name: item.name,
        image: item.image,
        rating: item.rating,
        isFavourite: true,
      );
    });
  }
}
