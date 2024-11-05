import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Spacebar extends StatelessWidget {
  const Spacebar({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeIcon = 25;
    final double sizeAva = 35;
    final double marginLeftRight = 10.0;
    final double sizeIconFilter = 20;

    final Text title = Text("CATALOG", style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.lightBlue));

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


    final GestureDetector sideRight =  GestureDetector(
      child: Container(
       width:sizeIcon,
       height: sizeIcon,
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

    Row target = Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                          sideLeft,
                          title,
                          sideRight
                      ],
                    );


    Padding scan = Padding(padding: EdgeInsets.only(left: 15), 
        child: Row(
            children: [
              GestureDetector(
                child: Container(
                width:sizeIconFilter,
                height: sizeIconFilter,
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

    Padding filter = Padding(padding: EdgeInsets.only(right: 30), 
        child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                    width:sizeIconFilter,
                    height: sizeIconFilter,
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

    FlexibleSpaceBar main = FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    color: MyConstant.myColor
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        target,
                        SizedBox(height: 50,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [ scan,filter],)
                      ],
                    ),
                  ),
                ),
              );

      return main;
  }
}