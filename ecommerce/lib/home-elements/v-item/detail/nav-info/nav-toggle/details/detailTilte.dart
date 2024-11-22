import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';


class Detailtilte extends StatelessWidget {
  Item item;
  Detailtilte({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;


    final String titleTxt = item.name ?? "";
    Widget title = Container(
      child: Text(titleTxt, style: TextStyle(fontWeight: FontWeight.bold, fontSize: MyConstant.subTitleSize)),
    );
    

      return title;
  }
}