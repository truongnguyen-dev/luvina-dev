
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/commons/fullScreen.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:flutter/material.dart';


class BgUp extends StatelessWidget {

    List<dynamic> imgs;

    BgUp({super.key, 
    required this.imgs,

    });

  CarouselSliderController carouselController = CarouselSliderController();

  List<dynamic> images = [
    'assets/images/child.jpg',
    'assets/images/black.jpg',
    'assets/images/couple.jpg'
  ];

  @override
  Widget build(BuildContext context) {

    if (imgs.length > 0) {
      images = this.imgs;
    }

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    Widget image_s(featuredImage) {
      Widget img = Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(featuredImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                );


                return GestureDetector(
                  child: img,
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                opaque: false,
                barrierColor: Colors.black,
                pageBuilder: (BuildContext context, _, __) {
                  return FullScreenPage(
                    child: Image.asset(featuredImage),
                    dark: true,
                  );
                },
              ),
            );
          },
        );
    }

    Align nextBtn = Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () { 
                  // Use the controller to change the current page
                  carouselController.nextPage();
                },
                icon: Icon(Icons.navigate_next, color: Colors.white,),
              ),
            );

    Align prevBtn = Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  // Use the controller to change the current page
                  carouselController.previousPage();
                },
                icon: Icon(Icons.navigate_before, color: Colors.white,),
              ),
            );

    Widget bookmarkBtn = Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: const Color.fromARGB(255, 245, 243, 243),
                            borderRadius: new BorderRadius.all(new Radius.circular(10))
                        ),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint('bookmarked');
                          },
                          child: Icon(
                            Icons.bookmark_border,
                          ),
                        ),
                      );

    Widget bookmark = Padding(padding: EdgeInsets.only(bottom: 15, right: 15),
                child: Align(
              alignment: Alignment.bottomRight,
              child: bookmarkBtn,
            ),);

    Widget backBtn = Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: const Color.fromARGB(255, 245, 243, 243).withOpacity(0.5),
                            borderRadius: new BorderRadius.all(new Radius.circular(10))
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                          ),
                        ),
                      );


    Widget navBack = Padding(padding: EdgeInsets.only(top: 15, left: 15),
        child: Align(
      alignment: Alignment.topLeft,
      child: backBtn,
    ),);


    Widget sliders = Stack(
          children: [
            CarouselSlider(
              carouselController: carouselController, // Give the controller
              options: CarouselOptions(
                height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
                autoPlay: true,
              ),
              items: images.map((featuredImage) {
                return image_s(featuredImage);
              }).toList(),
            ),
            nextBtn,
            prevBtn,
            bookmark,
            navBack
          ],
        );

      return Container(
                    width: width,
                    height: height*0.5,
                    child: sliders,
              );
  }
}