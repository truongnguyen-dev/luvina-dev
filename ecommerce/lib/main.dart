import 'package:ecommerce/home-elements/v-item/detail/product.dart';
import 'package:ecommerce/myHomePage.dart';
import 'package:ecommerce/providers/Items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemProvider()),
      ],
      child: const MainApp(),
    )
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
      ),
      home: Scaffold(body: MyHomePage(),),
    );
  }
}
