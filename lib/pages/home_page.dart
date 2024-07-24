// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:gebeya_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:gebeya_app/widgets/drawer.dart';
import 'package:gebeya_app/widgets/itemWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 7;
  final String name = "gebeya";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    if (productsData != null) {
      ProductModel.item = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
    } else {
      // Handle the case where productsData is null
      // For example, you could set ProductModel.item to an empty list
      ProductModel.item = [];
    }

    setState(() {});
  }

  Widget build(BuildContext context) {
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
        child: (ProductModel.item != null && ProductModel.item.isNotEmpty)
            ? ListView.builder(
                itemCount: ProductModel.item.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: ProductModel.item[index],
                  key: ValueKey(ProductModel.item[index].id),
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: mydrawer(),
    );
  }
}
