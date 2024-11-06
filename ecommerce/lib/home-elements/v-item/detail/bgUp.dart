
import 'package:flutter/material.dart';

class BgUp extends StatelessWidget {
  const BgUp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    Container main = Container(
                    width: width,
                    height: height*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                      image:AssetImage("assets/images/child.jpg"), 
                      fit:BoxFit.cover
                      ),
                    ),
              );

      return GestureDetector(
        child: main,
        onTap:(){
          Navigator.pop(context);
        }
      );
  }
}