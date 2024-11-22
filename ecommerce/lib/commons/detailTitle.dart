import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Detailtitle extends StatefulWidget {
  final String titleTxt;
  final bool isSub;
  final dynamic padding;
  final double size;
  Detailtitle ({ super.key, this.titleTxt = "", this.isSub = false , this.padding = null , this.size = 12});

  @override
  _DetailtitleState createState() => _DetailtitleState();
}

class _DetailtitleState extends State<Detailtitle> {

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Text txtTitle = Text(widget.titleTxt, style: TextStyle(fontWeight: FontWeight.bold, fontSize: widget.size != 12 ? widget.size : MyConstant.subTitleSize));

    if (widget.isSub) {
      txtTitle = Text(widget.titleTxt.toUpperCase(), style: TextStyle( fontWeight: FontWeight.bold, color:  MyConstant.greyTxtColor, fontSize: widget.size != 12 ? widget.size : MyConstant.chilTitleSize));
    }

    Widget title = Container(
      padding: widget.padding != null ? widget.padding : EdgeInsets.all(0),
      child: txtTitle,
    );

      return title;
  }
}