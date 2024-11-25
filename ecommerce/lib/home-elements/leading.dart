import 'package:ecommerce/buttons/newestBtn.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:ecommerce/providers/Items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyLeading extends StatelessWidget {
   MyLeading({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ItemProvider>(context, listen: false);
  int results_num = provider.items.length;


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

  Row main = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        results,
                        Newestbtn()
                      ],
                    );


      return main;
  }
}