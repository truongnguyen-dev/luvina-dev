import 'package:ecommerce/commons/checkStock.dart';
import 'package:ecommerce/commons/makeComments.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Footerrecommen extends StatelessWidget {
  final Item item;
  const Footerrecommen({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    int numComment = item.totalComment ?? 0;
    

    Container main = Container(
      padding: EdgeInsets.symmetric(horizontal: MyConstant.childHorizontalSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkstock(inStock: item.inStock ?? 0, size: MyConstant.chilTitleSize,),
          Makecomments(number: numComment,)
        ],
      ),
    );

      return main;
  }
}