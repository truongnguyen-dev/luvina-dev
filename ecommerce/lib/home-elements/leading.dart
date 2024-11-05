import 'package:flutter/material.dart';

class MyLeading extends StatelessWidget {
  const MyLeading({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialButton btn = MaterialButton(
        padding: const EdgeInsets.all(8.0),
        textColor: Colors.white,
        splashColor: Colors.red,
        elevation: 8.0,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('https://lh3.googleusercontent.com/a-/AOh14GhFJOIlbtl5UfQ1ySN76w2_sC3UGVXH2xOE1xsH=k-s64'), //some asset image
                fit: BoxFit.cover),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(),
          ),
        ),
        // ),
        onPressed: () {
          print('Tapped');
        },
      );

      return btn;
  }
}