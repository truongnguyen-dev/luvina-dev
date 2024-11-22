import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Longbtnnav extends StatelessWidget {
  String title;
  String icon;
  VoidCallback? func;
   Longbtnnav({super.key, required this.title, required this.icon, this.func});

  @override
  Widget build(BuildContext context) {
    final double marginLeftRight = 10.0;
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    ListView scan = ListView(
          shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                child: Container(
                width:MyConstant.sizeIconMiddle,
                height: MyConstant.sizeIconMiddle,
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image:AssetImage(icon), 
                  fit:BoxFit.cover
                  ),
                )
              ),onTap:func
              ),
              SizedBox(width: 8,),
              Text(title, style: TextStyle(fontSize: MyConstant.chilTitleSize), )
            ],
          );

      return Container(
        height: 30,
        width: width*0.35,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          color: MyConstant.greyTxtLightColor,
          border: Border.all(width: 0.5, color: MyConstant.greyTxtColor.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(3),
                  ),
        child: Align(child: scan, alignment: Alignment.center,),
      );
  }
}