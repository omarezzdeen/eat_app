import 'package:eat_app/widgets/items/item_food.dart';
import 'package:flutter/material.dart';

class FoodsListView extends StatelessWidget {
  const FoodsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: 10,itemBuilder: (context, index){
      return const ItemFood();
    });
  }
}
