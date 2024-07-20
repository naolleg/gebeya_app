// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:gebeya_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:gebeya_app/widgets/drawer.dart';
import 'package:gebeya_app/widgets/itemWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 7;
  final String name = "gebeya";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ገበያ',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: mydrawer(),
    );
  }
}
