import 'package:ecommerce/commons/checkStock.dart';
import 'package:ecommerce/home-elements/v-item/detail/product.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class Makeprice extends StatelessWidget {
  double price;
  double maxPrice;
  double size;
  Makeprice({this.price = 0, this.maxPrice = 0, this.size = 10, super.key});

  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    final formatter = intl.NumberFormat.decimalPattern();
    String max = this.maxPrice > 0 ? "¥" + formatter.format(this.maxPrice).toString() : "";

    Text price = Text("¥" + formatter.format(this.price).toString() + " ~ " + max, style: TextStyle(
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.bold,
      color:  Colors.blue,
      fontSize: this.size
    ),);

    return price;
  }
}