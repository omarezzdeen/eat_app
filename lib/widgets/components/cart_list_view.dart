import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eat_app/providers/carts.dart';
import 'package:eat_app/widgets/items/item_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartListView extends StatefulWidget {
  const CartListView({Key? key}) : super(key: key);

  @override
  State<CartListView> createState() => _CartListViewState();
}

class _CartListViewState extends State<CartListView> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Carts>(context);
    return StreamBuilder(
      stream: cart.getAllCart(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong!');
        } else if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }
        final data = snapshot.requireData;
        return ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: data.size,
          itemBuilder: (context, index) {
            final item = data.docs[index];
            return Dismissible(
                key: ValueKey<int>(index),
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    print('Swiped end to start');
                  } else if (direction == DismissDirection.startToEnd) {
                    print('Swiped start to end');
                  } else if (direction == DismissDirection.down) {
                    print('Swiped down');
                  } else if (direction == DismissDirection.none) {
                    print('Swiped none');
                  }
                  // setState(() {});
                },
                child: ItemCart(
                  name: item['name'],
                  image: item['image'],
                  price: item['price'],
                ));
          },
        );
      }
    );
  }
}
