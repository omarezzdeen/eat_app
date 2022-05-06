import 'package:eat_app/widgets/items/item_cart.dart';
import 'package:flutter/material.dart';

class CartListView extends StatefulWidget {
  const CartListView({Key? key}) : super(key: key);

  @override
  State<CartListView> createState() => _CartListViewState();
}

class _CartListViewState extends State<CartListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      // TODO: implement build ---> RESEARCH

      padding: EdgeInsets.all(0),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Dismissible(
            key: ValueKey<int>(index),
            onDismissed: (DismissDirection direction) {
              setState(() {});
            },
            child: const ItemCart());
      },
    );
  }
}
