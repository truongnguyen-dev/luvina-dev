import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    final double marginLeftRight = 10.0;

    Padding filter = Padding(padding: EdgeInsets.only(right: 50), 
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
                      image:AssetImage("assets/icons/filter.png"), 
                      fit:BoxFit.cover
                      ),
                    )
                  ),onTap:(){
                  print("you clicked me");
                  }
                  ),
                  SizedBox(width: 8,),
                  Text("Filter")
                ],
              ),
          );

      return filter;
  }
}