
import 'package:ecommerce/models/sorter.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:flutter/material.dart';

class Dialogcustom extends StatelessWidget {
  BuildContext ctx ;
  List<Sorter> filters;
  String title;
  Function(Sorter) func;

  Dialogcustom({super.key, required this.ctx, required this.filters, required this.func, this.title = "Please select a view."});

  static int results_num = 200;

  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));

  Container item = Container(
                  height: 200.0, 
                  width: 300.0, 
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: filters.length,
                    itemBuilder: (BuildContext context, int i) {
                      return ListTile(
                        shape: RoundedRectangleBorder(borderRadius: borderRadius),
                        selectedTileColor: Colors.orange[100],
                        selected: filters[i].isSelected ?? false,
                        onTap: (){
                          Navigator.pop(ctx);
                          func(filters[i]);
                        },
                        title: Text(filters[i].name ?? "has Error"),
                      );
                    },
                  ),
                );



      AlertDialog builder = AlertDialog(
                title: Text(title),
                content: item
              );

       return builder;
  }
}