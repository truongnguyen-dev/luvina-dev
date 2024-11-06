import 'package:ecommerce/home-elements/v-item/detail/product.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {
  const Thumbnail({super.key});

  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    double heightBox = height/2.7;

    final double marginLeftRight = 10.0;
    String aliasTxt = "BEAUTYSYOUTH TEST TEXT";
    String titleTxt = "Jacket, Blouson";
    String priceTxt = "¥8000~";
    bool inStockFlag = true;
    String stockTxt = "In Stock";
    String outStockTxt = "Out of Stock";

    

    Container thumb =  Container(
       width:width/2,
       height: heightBox*0.75,
      //  margin: EdgeInsets.only(left: marginLeftRight),
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        image: DecorationImage(
        image:AssetImage("assets/images/couple.jpg"), 
        fit:BoxFit.cover
         ),
       )
      );

    Text alias = Text(aliasTxt, style: TextStyle(
      fontSize: 10,
      overflow: TextOverflow.ellipsis,
      color: Colors.grey.shade500
    ),);

    Text title = Text(titleTxt, style: TextStyle(
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.bold
    ),);

    Text price = Text(priceTxt, style: TextStyle(
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.bold,
      color:  Colors.blue
    ),);

    Text checkStock = Text(stockTxt, style: const TextStyle(
      fontSize: 10,
      color:  Color.fromRGBO(1, 56, 100, 1)
    ),);

    Row stock = Row(
            children: [
              Container(
                width:MyConstant.sizeIconChild,
                height: MyConstant.sizeIconChild,
                // margin: EdgeInsets.only(left: marginLeftRight),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                  image:const AssetImage("assets/icons/in-stock.png"), 
                  fit:BoxFit.cover
                  ),
                )
              ),
              SizedBox(width: 2,),
              checkStock
            ],
          );


    Container main = Container(
      margin: EdgeInsets.all(MyConstant.paddingGrid),
      // margin: EdgeInsets.all(0),
      width: width/2,
      height: heightBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          thumb,
          SizedBox(height: 5,),
          alias,
          title,
          price,
          stock
        ],
    ),
    );

    return GestureDetector(
      child: main,
      onTap:(){
       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Product();
              }),
            );
      }
    );
  }
}