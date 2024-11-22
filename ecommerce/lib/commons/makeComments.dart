import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';



class Makecomments extends StatelessWidget {
  final double size;
  final double sizeTxt;
  final int number;
  const Makecomments({this.number = 0, this.size = 10, this.sizeTxt = 8});


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    Color color = MyConstant.greyTxtColor;
    IconData iconSet = Icons.comment;
    double sizeIcon = this.size;


    Text numberComment = Text(this.number.toString(), style: TextStyle(
      fontSize: this.size,
      color: color,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
    ),);

    Widget icon = Icon(
              iconSet,
              size: sizeIcon,
              color: color,
            );

    Row main = Row(
            children: [
              icon,
              SizedBox(width: 2,),
              numberComment
            ],
          );

      return main;
  }
}