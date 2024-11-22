import 'package:ecommerce/commons/checkStock.dart';
import 'package:ecommerce/commons/makePrice.dart';
import 'package:ecommerce/home-elements/v-item/detail/product.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class Thumbnail extends StatelessWidget {
  Item item;
   Thumbnail({super.key, 
  required this.item,

  });

  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    final formatter = intl.NumberFormat.decimalPattern();
    double heightBox = (height/2.7);
    String? aliasTxt = this.item.brand ?? '';
    String titleTxt = this.item.category ?? '';
    String imageUrl = this.item.imageUrl![0] ?? "assets/images/couple.jpg";
    double? priceTxt = this.item.minPrice ?? 0;
    double? maxPriceTxt = this.item.maxPrice ?? 0;
    int? inStockFlag = this.item.inStock ?? 0;

    

    Container thumb =  Container(
       width:width/2,
       height: heightBox*0.8,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular((MyConstant.radiusitem)), topRight: Radius.circular(MyConstant.radiusitem), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0)),
        image: DecorationImage(
        image:AssetImage(imageUrl), 
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

    Container main = Container(
      decoration: BoxDecoration(
        boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 2),
        ),
    ],
      ),
      margin: EdgeInsets.all(MyConstant.paddingGrid),
      // margin: EdgeInsets.all(0),
      width: width/2,
      height: heightBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          thumb,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(MyConstant.radiusitem), bottomRight: Radius.circular(MyConstant.radiusitem)),
              color: Colors.white,
              ), 
            padding: EdgeInsets.only(left: MyConstant.spaceSubBlock),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(height: 5,),
                alias,
                SizedBox(height: 2,),
                title,
                SizedBox(height: 2,),
                Makeprice(price: priceTxt, maxPrice: maxPriceTxt, size: MyConstant.contentSize,),
                SizedBox(height: 10,),
                Checkstock(inStock: inStockFlag, size: MyConstant.chilTitleSize,),
                SizedBox(height: 9,),
              ],
            ),
          )
        ],
    ),
    );

    return GestureDetector(
      child: main,
      onTap:(){
       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Product(item: this.item,);
              }),
            );
      }
    );
  }
}