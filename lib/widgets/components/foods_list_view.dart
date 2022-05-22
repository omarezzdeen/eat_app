import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eat_app/model/food.dart';
import 'package:eat_app/providers/toast_message.dart';
import 'package:eat_app/widgets/items/item_food.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/foods.dart';

class FoodsListView extends StatelessWidget {
  FoodsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final food = Provider.of<Foods>(context);
    return StreamBuilder(
        stream: food.getAllFoods(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text("Something went wrong!");
          } else if(snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final data = snapshot.requireData;
            return ListView.builder(
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: data.size,
                itemBuilder: (context, index) {
                  final item = data.docs[index];
                  // ToastMessage().toastMessage(item.id);
                  return ItemFood(
                    id: item.id,
                    name: item['name'],
                    image: item['image'],
                    rating: item['rating'],
                    category: item['category'],
                    isFavourite: item['isFavorite'],
                  );
                });

        });
  }
}
