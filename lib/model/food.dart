

class Food {
  final String? id;
  final String name;
  final String description;
  final String image;
  final double price;
  final String category;
  final String rating;
  final String restaurant;
  final bool isFavorite;

  Food(
      {this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.category,
      required this.rating,
      required this.restaurant,
      required this.isFavorite});

  Map<String,dynamic> toJson() => {
    'name': name,
    'description': description,
    'image': image,
    'price': price,
    'category': category,
    'rating': rating,
    'restaurant': restaurant,
    'isFavorite': isFavorite,
  };

  static Food fromJson(Map<String,dynamic> json) => Food(
    id: json['id'],
    name: json['name'],
    description: json['description'],
    image: json['image'],
    price: json['price'],
    category: json['category'],
    rating: json['rating'],
    restaurant: json['restaurant'],
    isFavorite: json['isFavorite'],
  );
}