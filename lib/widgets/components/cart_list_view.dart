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

      padding: const EdgeInsets.all(0),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Dismissible(
            key: ValueKey<int>(index),
            onDismissed: (direction) {
              if(direction == DismissDirection.endToStart) {
                print('Swiped end to start');
              } else if(direction == DismissDirection.startToEnd) {
                print('Swiped start to end');
              }else if(direction == DismissDirection.down) {
                print('Swiped down');
              }else if(direction == DismissDirection.none) {
                print('Swiped none');
              }
              // setState(() {});
            },
            child: const ItemCart());
      },
    );
  }
}
