import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';


class Detailcontent extends StatelessWidget {
  Item item;
  Detailcontent({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    TextStyle styleMain = TextStyle(fontWeight: FontWeight.bold, fontSize: MyConstant.subTitleSize);
    TextStyle styleContent = TextStyle(fontSize: MyConstant.contentSize);


    final String titleTxt = "Detail";
    final String contentTxt = item.description ?? "";

    Widget main = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleTxt, style: styleMain),
        SizedBox(height: MyConstant.spaceSubBlock,),
        Text(contentTxt, style: styleContent),
      ]
    );
    

      return main;
  }
}