import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class MyLeading extends StatelessWidget {
   MyLeading({super.key});

  static int results_num = 200;

  @override
  Widget build(BuildContext context) {

Padding results = Padding(padding: EdgeInsets.only(left: 15), 
        child: Row(
            children: [
              GestureDetector(
                child: Text( "Results (" + results_num.toString() + ")",
                  style: TextStyle(fontWeight: FontWeight.bold),
              ),onTap:(){
              print("you clicked me");
              }
              )
            ],
          )
  );


  Padding newest = Padding(padding: EdgeInsets.only(right: 30), 
        child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                    width:MyConstant.sizeIcon,
                    height: MyConstant.sizeIcon,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                      image:AssetImage("assets/icons/sort.png"), 
                      fit:BoxFit.cover
                      ),
                    )
                  ),onTap:(){
                  print("you clicked me");
                  }
                  ),
                  SizedBox(width: 8,),
                  Text("Newest")
                ],
              ),
          );

  Row main = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(height: 50,),
                        results,
                        // SizedBox(height: 50,),
                        newest
                      ],
                    );


      return main;
  }
}