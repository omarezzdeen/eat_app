import 'package:eat_app/providers/categories.dart';
import 'package:eat_app/widgets/items/item_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final category = Provider.of<Categories>(context);
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.items.length,
        itemBuilder: (context, index) {
          final categoryItem = category.items[index];
          return ItemCategory(name: categoryItem.name,image: categoryItem.image,);
        });
  }
}
