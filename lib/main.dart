import 'package:flutter/material.dart';
import 'package:search_engine/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Engine',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
