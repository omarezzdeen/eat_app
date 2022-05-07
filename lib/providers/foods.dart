import 'package:eat_app/model/food.dart';
import 'package:flutter/cupertino.dart';

import '../utils/images.dart';

class Foods with ChangeNotifier {
  final _items = [
    Food(
      id: '1',
      name: 'kebab',
      description:
          'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.',
      price: 34.99,
      category: 'Burger',
      image: 'assets/images/victoria-shes-UC0HZdUitWY-unsplash.jpg',
      rating: '4.3',
      restaurant: 'kebab Chicken, krama Gaza',
      isFavorite: true,
    ),
    Food(
      id: '2',
      name: 'Salmon Fish Steaks',
      description:
          'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.',
      price: 29.99,
      category: 'Pizza',
      image: 'assets/images/38660.png',
      rating: '4.5',
      restaurant: 'Kibbutz Cabri, Crossing republic',
      isFavorite: true,
    ),
    Food(
      id: '3',
      name: 'Chicken Drumstick',
      description:
          'The name biryani itself brings water in your mouth. It’s a one-pot meat that can fill your stomach itself and it doesn’t need any side dish, however, many enjoy biryani with mirchi ka salan and raita. over the years there have been several variations of this one dish. Here’s one dish that defines the word biryani and based on which, the variations have taken place. Chicken Biryani is one of the most popular dishes that you can find across the world and it’s loaded with various spices. ',
      price: 13.00,
      category: 'Chicken',
      image: 'assets/images/test.png',
      rating: '4.7',
      restaurant: 'Chawala Chicken, Crossing republic',
      isFavorite: true,
    ),
    Food(
      id: '4',
      name: 'Pad Thai',
      description:
          'Rice Noodles, Eggs, Bean Sprouts, Green Onions topped with Crushed Peanuts and a slice of Lime on the side',
      price: 89.99,
      category: 'Sea food',
      image: 'assets/images/cb7f7d8b67e6d06d3d8b223972e7abd1.jpg',
      rating: '4.9',
      restaurant: 'Arawan Thai Sushi, Japanese',
      isFavorite: true,
    ),
    Food(
      id: '5',
      name: 'Fantasy Roll',
      description:
          'Spicy Tuna, Cucumber, Shrimp Tempura topped with Avocado then drizzled with Eel Sauce and Kimchi Sauce',
      price: 79.99,
      category: 'Sea food',
      image: 'assets/images/ebc646c7b9e87085acf40eb64c73564f.jpg',
      rating: '4.1',
      restaurant: 'Arawan Thai Sushi, Japanese',
      isFavorite: false,
    ),
  ];

  List<Food> get items => [..._items];

  Food findById(String id) {
    return _items.firstWhere((food) => food.id == id);
  }
}
