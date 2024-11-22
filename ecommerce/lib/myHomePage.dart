import 'package:ecommerce/home-elements/leading.dart';
import 'package:ecommerce/home-elements/spaceBar.dart';
import 'package:ecommerce/home-elements/v-item/thumbnail.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:ecommerce/providers/Items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyHomePage extends StatefulWidget {
@override
  State<MyHomePage> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ItemProvider>(context, listen: false).getItems();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      
    });
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    double heightBox = (height/2.7)+32;
    final _provider = Provider.of<ItemProvider>(context);

    Widget itemGrid () {
      return _provider.items.length > 0 ? GridView.builder(
          itemCount: _provider.items.length,
          padding:EdgeInsets.all(MyConstant.paddingGrid),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: heightBox, 
          ),
          itemBuilder: (context, int i) {
              return Thumbnail(
                item: _provider.items[i],
                );
            },
      ) : Container();
    }


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
                toolbarHeight: 35.0,
              ),
            ),
          ];
        },
        body: itemGrid(),
      ),
    );
  }
}