class Cart {
  final String id;
  final String name;
  final String image;
  final double price;

  Cart({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  toMap(){
    return {
      'name': name,
      'image': image,
      'price': price,
    };
  }
}
