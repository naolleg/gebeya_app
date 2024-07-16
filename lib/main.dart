// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gebeya_app/pages/login.dart';
import 'pages/home_page.dart';
import 'utils/route.dart';

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
        initialRoute: myRoute.loginroute,
        routes: {
          "/": (context) => Login(),
          myRoute.homeroute: (context) => HomePage(),
          myRoute.loginroute: (context) => Login()
        });
  }
}
