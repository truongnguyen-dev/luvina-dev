import 'package:ecommerce/commons/longBtnNav.dart';
import 'package:ecommerce/home-elements/avatar.dart';
import 'package:ecommerce/home-elements/filter.dart';
import 'package:ecommerce/home-elements/notice.dart';
import 'package:ecommerce/home-elements/scan.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Spacebar extends StatelessWidget {
  const Spacebar({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeAva = 30;
    final double marginLeftRight = 10.0;
    

    final Text title = Text("CATALOG", style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.lightBlue));

    Row navUp = Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                          Avatar(),
                          title,
                          Notice()
                      ],
                    );

    Widget navDown = Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [ 
        Longbtnnav(icon: "assets/icons/scan.png", title: "Scan product Tag",),
        Longbtnnav(icon: "assets/icons/filter.png", title: "Filter",)
      ]
      ),
    );

    FlexibleSpaceBar main = FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    // color: MyConstant.myColor
                  ),
                  child: Container(
                    // padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        navUp,
                        SizedBox(height: 10,),
                        navDown,
                        SizedBox(height: 40,),
                      ],
                    ),
                  ),
                ),
              );

      return main;
  }
}