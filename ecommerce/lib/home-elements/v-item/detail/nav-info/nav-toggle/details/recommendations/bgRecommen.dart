
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math; 



class Bgrecommen extends StatelessWidget {
  final bool newItem;
  final Item item;
  Bgrecommen({this.newItem = false, required this.item, super.key});

  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    double wBg = width*0.3;
    double hBg = height*0.19;
    String url = item.imageUrl?[0] ?? "assets/images/child.jpg";

    Widget  main = Container(
                  width: wBg,
                  height: hBg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular((MyConstant.radiusitem)), topRight: Radius.circular(MyConstant.radiusitem), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)),
                    image: DecorationImage(
                      image: AssetImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                );

    Widget  newTag = Container(
                  width: MyConstant.maxSizeIcon,
                  height: MyConstant.maxSizeIcon,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/new.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );


      Transform flip = Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: newTag,
              );

      return Stack(children: [
        Align(alignment: Alignment.center, child: main,),
        newItem ? Align(alignment: Alignment.topLeft, child: flip,) : Container(),
      ],);
  }
}