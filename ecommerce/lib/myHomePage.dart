import 'package:ecommerce/home-elements/leading.dart';
import 'package:ecommerce/home-elements/spaceBar.dart';
import 'package:ecommerce/home-elements/v-item/thumbnail.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    double heightBox = (height/2.7)+3;

    GridView items = GridView.builder(
          itemCount: 7,
          padding:EdgeInsets.all(MyConstant.paddingGrid),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: heightBox, 
          ),
          itemBuilder: (context, int index) {
              return Thumbnail();
            },
    );



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
              expandedHeight: 200.0,
              forceElevated: innerBoxIsScrolled,
              bottom: AppBar(
                flexibleSpace: MyLeading(),
                toolbarHeight: 25.0,
              ),
            ),
          ];
        },
        body: items,
      ),
    );
  }
}