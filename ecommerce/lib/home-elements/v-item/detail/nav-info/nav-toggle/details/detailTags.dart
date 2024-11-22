import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Detailtags extends StatelessWidget {
  Item item;
  Detailtags({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    double heightContentNav = height*0.3;
    List<dynamic> list = this.item.tags ?? [];

    makeChip(String txt) {
      double heightChip = 30;
      BoxDecoration decor = BoxDecoration(
            color: MyConstant.greyTxtLightColor,
            borderRadius: BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: MyConstant.greyBoldtxtColor.withOpacity(0.3))
          );

      Widget chipItem = Container(
        margin: EdgeInsets.only(right: 3),
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          constraints: BoxConstraints(
              maxHeight: heightChip
          ),
          decoration: decor,
          // height: heightChip,
          child: 
          Text(txt, style: TextStyle(fontSize: MyConstant.chilTitleSize, fontWeight: FontWeight.bold),),
      );


      return chipItem;
    }


    Widget main = Container(
      constraints: BoxConstraints(maxHeight: heightContentNav),
      child: ListView(
        shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        for (int i = 0; i < list.length; i++) makeChip(list[i]),
      ],
    ),
    );

      return 
        Wrap(children: [
        for (int i = 0; i < list.length; i++) makeChip(list[i]),
      ]);
      
  }
}