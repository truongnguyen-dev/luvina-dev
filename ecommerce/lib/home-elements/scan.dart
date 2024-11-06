import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    final double marginLeftRight = 10.0;

    Padding scan = Padding(padding: EdgeInsets.only(left: 15), 
        child: Row(
            children: [
              GestureDetector(
                child: Container(
                width:MyConstant.sizeIcon,
                height: MyConstant.sizeIcon,
                margin: EdgeInsets.only(left: marginLeftRight),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                  image:AssetImage("assets/icons/scan.png"), 
                  fit:BoxFit.cover
                  ),
                )
              ),onTap:(){
              print("you clicked me");
              }
              ),
              SizedBox(width: 8,),
              Text("Scan product Tag")
            ],
          )
        );

      return scan;
  }
}