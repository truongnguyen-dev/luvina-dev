import 'package:ecommerce/commons/detailTitle.dart';
import 'package:ecommerce/commons/makePrice.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Inforecommen extends StatelessWidget {
  final Item item;

  const Inforecommen({super.key, 
      required this.item
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    Widget main = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: MyConstant.spaceSubBlock,),
                      Detailtitle(titleTxt: item.brand ?? "", isSub: true, size: MyConstant.subMiddleTitleSize, padding: EdgeInsets.only(left: MyConstant.childHorizontalSpace)),
                      SizedBox(height: 2),
                      Detailtitle(titleTxt: item.category ?? "", size: MyConstant.subMiddleTitleSize, padding: EdgeInsets.only(left: MyConstant.childHorizontalSpace)), 
                      SizedBox(height: 4),
                      Padding(padding: EdgeInsets.only(left: MyConstant.childHorizontalSpace), child: Makeprice(price: item.minPrice ?? 0, maxPrice : item.maxPrice ?? 0, size: MyConstant.sizeIconChild,))
                    ],
              );

      return Container(
        // padding: EdgeInsets.only(left: MyConstant.horizontalSpace),
        child: main,
      );
  }
}