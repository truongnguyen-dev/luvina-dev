import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeAva = 35;
    final double marginLeftRight = 10.0;
    

    final GestureDetector sideLeft =  GestureDetector(
      child: Container(
       width:sizeAva,
       height: sizeAva,
       margin: EdgeInsets.only(left: marginLeftRight),
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
        image:AssetImage("assets/images/robo.jpg"), 
        fit:BoxFit.cover
         ),
       )
      ),onTap:(){
       print("you clicked me");
      }
    );


      return sideLeft;
  }
}