import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/recommendations/bgRecommen.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/recommendations/footerRecommen.dart';
import 'package:ecommerce/home-elements/v-item/detail/nav-info/nav-toggle/details/recommendations/infoRecommen.dart';
import 'package:ecommerce/home-elements/v-item/detail/product.dart';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:ecommerce/providers/Items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Itemrecommen extends StatefulWidget {
  Item item;

  Itemrecommen({super.key, required this.item});

  @override
  State<Itemrecommen> createState() => ItemrecommenState();
}

class ItemrecommenState extends State<Itemrecommen> {

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ItemProvider>(context, listen: false).getRecommendations(widget.item.id ?? 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    final _provider = Provider.of<ItemProvider>(context);

    

      event (Item t_item) {
          return GestureDetector(
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MyConstant.radiusitem),
        color: Colors.white,
      ),
                    width: width*0.3,
                    height: height*0.3,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Bgrecommen(item: t_item,),
                        Inforecommen(item: t_item,),
                        SizedBox(height: 10,),
                        Footerrecommen(item: t_item,)
                      ],
                    ),
              ),
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) {
          //       return Product(item: this.item,);
          //     }),
          //   );
        },
      );
      }

      return SingleChildScrollView(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: height*0.3,
            child: _provider.recommendations.length > 0 ? ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _provider.recommendations.length,
              separatorBuilder: (_, __) => SizedBox(width: 5,),
              itemBuilder: (BuildContext context, int i) => event(_provider.recommendations[i]),
            ) : Container(),
          ),
        ],
      )
      )
          ;
  }
}