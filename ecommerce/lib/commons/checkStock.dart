import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';



class Checkstock extends StatelessWidget {
  final int inStock;
  final double size;
  final double sizeTxt;
  const Checkstock({this.inStock = 1, this.size = 10, this.sizeTxt = 8});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    String stockTxt = "In Stock";
    Color colorStock = Color.fromRGBO(1, 56, 100, 1);
    IconData iconSet = Icons.inbox;
    double sizeIcon = this.size;

    if (this.inStock == 0) {
        stockTxt = "Out of Stock";
        colorStock = Color.fromRGBO(218, 5, 5, 1);
    }


    Text checkStock = Text(stockTxt, style: TextStyle(
      fontSize: this.size,
      color: colorStock,
      fontWeight: FontWeight.bold
    ),);

    Widget icon = Icon(
              iconSet,
              size: sizeIcon,
              color: colorStock,
            );

    Row main = Row(
            children: [
              icon,
              SizedBox(width: 2,),
              checkStock
            ],
          );

      return main;
  }
}