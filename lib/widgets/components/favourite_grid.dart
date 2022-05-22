import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eat_app/widgets/items/item_favourite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/foods.dart';

class FavouriteGrid extends StatelessWidget {
  const FavouriteGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> foodStream = FirebaseFirestore.instance.collection('foods').where("isFavorite", isEqualTo: true).snapshots();

    final food = Provider.of<Foods>(context);
    return StreamBuilder(
      stream: foodStream,
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong!');
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final data = snapshot.requireData;
        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          itemCount: data.size,
          itemBuilder: (content, index) {
            final item = data.docs[index];
            return ItemFavourite(
              id: item.id,
              name: item['name'],
              image: item['image'],
              rating: item['rating'],
              category: item['category'],
              price: item['price'],
              isFavourite: item['isFavorite'],
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
    );
  }
}
