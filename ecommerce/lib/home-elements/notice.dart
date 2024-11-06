import 'package:ecommerce/home-elements/avatar.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  const Notice({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeAva = 35;
    final double marginLeftRight = 10.0;
    

    final Text title = Text("CATALOG", style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.lightBlue));


    final GestureDetector sideRight =  GestureDetector(
      child: Container(
       width:MyConstant.sizeIcon,
       height: MyConstant.sizeIcon,
       margin: EdgeInsets.only(right: marginLeftRight),
       decoration: BoxDecoration(
          image: DecorationImage(
          image:AssetImage("assets/icons/noti.png"), 
          fit:BoxFit.fill
         ),
       )
      ),onTap:(){
       print("you clicked me");
      }
    );

      return sideRight;
  }
}