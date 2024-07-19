import 'dart:ffi';

class Item {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageurl;
  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageurl,
  });
}

final product = [
  Item(
      id: 1,
      name: "iPhone 12 Pro",
      description: "Apple iPhone 12th generation",
      price: 999.00,
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
];
