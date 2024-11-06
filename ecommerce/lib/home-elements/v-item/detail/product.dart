
import 'package:ecommerce/home-elements/v-item/detail/bgUp.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {


    Container main = Container(
                  decoration: BoxDecoration(
                    // color: MyConstant.myColor
                  ),
                  child: Column(
                      children: [
                          BgUp()
                      ],
                    )
                );

      return main;
  }
}