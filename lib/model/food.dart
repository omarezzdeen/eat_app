

class Food {
  final String id;
  final String name;
  final String description;
  final String image;
  final double price;
  final String category;
  final String rating;
  final String restaurant;
  final bool isFavorite;

  Food(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.category,
      required this.rating,
      required this.restaurant,
      required this.isFavorite});
}