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

    Row navDown = Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [ Scan(),Filter()],);

    FlexibleSpaceBar main = FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    // color: MyConstant.myColor
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        navUp,
                        SizedBox(height: 50,),
                        navDown
                      ],
                    ),
                  ),
                ),
              );

      return main;
  }
}