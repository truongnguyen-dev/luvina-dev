import 'package:ecommerce/home-elements/leading.dart';
import 'package:ecommerce/myHomePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
