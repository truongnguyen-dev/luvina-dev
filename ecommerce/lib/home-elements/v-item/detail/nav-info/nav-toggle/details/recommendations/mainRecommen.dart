import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/recommendations/bgRecommen.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/recommendations/itemRecommen.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Mainrecommen extends StatelessWidget {
  Item item;
  Mainrecommen({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    String titleTxt = "Recommendations";

    Text title = Text(titleTxt, style: TextStyle(fontWeight: FontWeight.bold, fontSize: MyConstant.subTitleSize));

    Widget main = Container(
      padding: EdgeInsets.symmetric(horizontal: MyConstant.horizontalSpace),
      color: MyConstant.myColor,
                    width: width,
                    constraints: BoxConstraints(minHeight: height*0.3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MyConstant.spaceBlock,),
                        title,
                        SizedBox(height: MyConstant.spaceSubBlock),
                        Itemrecommen(item: item,)
                    ],),
              );

      return main;
  }
}