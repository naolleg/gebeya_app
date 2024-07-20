import 'package:flutter/material.dart';
import 'package:gebeya_app/models/product.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({required Key key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.imageurl),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text(
          "${item.price}\ETB",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
