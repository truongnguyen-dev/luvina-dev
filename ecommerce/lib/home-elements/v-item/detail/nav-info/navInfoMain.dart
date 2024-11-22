import 'package:ecommerce/commons/detailTitle.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/switchNav.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';


class Navinfomain extends StatelessWidget {
  Item item;
  Navinfomain({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    final double spaceTxt = 5;
    

    String subTitleTxt = this.item.brand ?? "";
    String titleTxt = this.item.category ?? "";

    Widget info = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(height: MyConstant.spaceBlock,),
          Detailtitle(titleTxt: subTitleTxt, isSub: true, padding: EdgeInsets.only(left: MyConstant.horizontalSpace),),
          SizedBox(height: spaceTxt,),
          Detailtitle(titleTxt: titleTxt, padding: EdgeInsets.only(left: MyConstant.horizontalSpace)),
          SizedBox(height: MyConstant.spaceBlock,),
          Switchnav(item: this.item,),
      ],
    );
    
      return Container(
                    decoration: BoxDecoration(
                      color: MyConstant.myColor
                    ),
                    width: width,
                    child: info,
              );
  }
}