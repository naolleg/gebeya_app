// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

class ProductModel {
  static List<Item> item = []; // Initialize with an empty list
}

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
  Item copyWith({
    required int id,
    String? name,
    String? description,
    double? price,
    String? imageurl,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageurl: imageurl ?? this.imageurl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageurl': imageurl,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      imageurl: map['imageurl'],
    );
  }
  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price, imageurl: $imageurl)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Item &&
        o.id == id &&
        o.name == name &&
        o.description == description &&
        o.price == price &&
        o.imageurl == imageurl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        imageurl.hashCode;
  }
}
