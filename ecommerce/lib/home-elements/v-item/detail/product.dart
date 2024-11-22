
import 'package:ecommerce/home-elements/v-item/detail/bgUp.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/navInfoMain.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  Item item;
  Product({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    Container main = Container(
                  width: width,
                  decoration: BoxDecoration(
                    // color: MyConstant.myColor
                  ),
                  child: ListView(
                      children: [
                          BgUp(imgs: item.imageUrl ?? [],),
                          Navinfomain(item: item,),
                      ],
                    )
                );

      return Scaffold(body: main,);
  }
}