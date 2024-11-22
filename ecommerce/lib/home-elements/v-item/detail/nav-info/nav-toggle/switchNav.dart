import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/DetailMainProduct.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Switchnav extends StatefulWidget {
  Item item;
  Switchnav({super.key, required this.item});

  @override
  State<Switchnav> createState() => _SwitchnavState();
}

class _SwitchnavState extends State<Switchnav>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    String detailTxt = "Detail";
    String stockTxt = "Stock";
    String commentTxt = "Comment";
    TextStyle styleNav = TextStyle(fontWeight: FontWeight.bold);
    double heightContentNav = height*0.815;

    List<Tab> tab = [
        Tab(child: Text(detailTxt, style: styleNav)),
        Tab(child: Text(stockTxt, style: styleNav)),
        Tab(child: Text(commentTxt, style: styleNav)),
      ];

    Widget main = ListView(
      shrinkWrap: true,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.symmetric(horizontal: MyConstant.horizontalSpace),
            height: height*0.03,
            decoration: new BoxDecoration(color: MyConstant.myColor),
            child: new TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: MyConstant.selectedNav,
              indicatorColor: MyConstant.selectedNav,
              unselectedLabelColor: MyConstant.greyTxtColor,
              controller: _tabController,
              isScrollable: false,
              tabs: tab
            ),
          ),
          Container(
            constraints: BoxConstraints(maxHeight: heightContentNav, minHeight: 30),
            width: width,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Detailmainproduct(item: widget.item),
                Container(
                  width: width,
                  height: 50,
                  // constraints: BoxConstraints(maxHeight: heightContentNav),
                  child: Center(child: Text(stockTxt + " (under develop)", style: styleNav,),),
                ),
                Container(
                  width: width,
                  height: 80,
                  // constraints: BoxConstraints(maxHeight: heightContentNav),
                  child: Center(child: Text(commentTxt + " (under develop)", style: styleNav,),),
                ),
              ],
            ),
          ),
        ],
      );


    return main;
  }
  
  }