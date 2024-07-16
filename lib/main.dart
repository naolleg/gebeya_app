// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gebeya_app/pages/login.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        initialRoute: "/home",
        routes: {
          "/": (context) => Login(),
          "/home": (context) => HomePage(),
          "/login": (context) => Login()
        });
  }
}
