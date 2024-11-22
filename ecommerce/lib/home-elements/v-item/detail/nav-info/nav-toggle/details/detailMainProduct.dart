import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/detailContent.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/detailTags.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/detailTilte.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/recommendations/mainRecommen.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Detailmainproduct extends StatelessWidget {
  Item item;
  Detailmainproduct({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    double heightContentNav = height*0.7;

    Container whiteMain = Container(
      width: width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                    SizedBox(height: MyConstant.spaceBlock,),
                    Padding(padding: EdgeInsets.only(left: MyConstant.horizontalSpace), child:Detailtags(item: item,),),
                    SizedBox(height: MyConstant.spaceSubBlock,),
                    Padding(padding: EdgeInsets.only(left: MyConstant.horizontalSpace), child:Detailtilte(item: item,),),
                    SizedBox(height: MyConstant.spaceBlock,),
                    Padding(padding: EdgeInsets.only(left: MyConstant.horizontalSpace), child:Divider(color: MyConstant.myColor.withOpacity(0.9),),),
                    Padding(padding: EdgeInsets.only(left: MyConstant.horizontalSpace), child:Detailcontent(item: item,),),
                    SizedBox(height: MyConstant.spaceBlock,),
      ],),
    );

    Widget main = Container(
      color: MyConstant.myColor,
      constraints: BoxConstraints(minHeight: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    whiteMain,
                    Mainrecommen(item: item)
                  ],
                ),
    );

      return main;
  }
}