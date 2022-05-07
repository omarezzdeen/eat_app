

import 'package:flutter/cupertino.dart';

import '../model/category.dart';

class Categories with ChangeNotifier {
  final _items = [
    Category(id: '1', name: 'Burger', image: 'assets/images/burger.png'),
    Category(id: '2', name: 'Pizza', image: 'assets/images/Asset 3.png'),
    Category(id: '3', name: 'Chicken', image: 'assets/images/Asset 4.png'),
    Category(id: '4', name: 'Drink', image: 'assets/images/Asset 5.png'),
    Category(id: '5', name: 'Donuts', image: 'assets/images/Asset 1.png'),
  ];

  List<Category> get items => [..._items];
}