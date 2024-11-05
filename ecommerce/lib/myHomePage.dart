


import 'package:ecommerce/home-elements/spaceBar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This will help manage the SliverAppBar and ListView
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              flexibleSpace: Spacebar(),
              // title: const Text('Title'),
              floating: true,
              pinned: true,
              expandedHeight: 300.0,
              forceElevated: innerBoxIsScrolled,
              bottom: AppBar(
                backgroundColor: Colors.orange,
                toolbarHeight: 64.0,
              ),
            ),
          ];
        },
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Center(child: Text('Item 1')),
            );
          },
        ),
      ),
    );
  }
}