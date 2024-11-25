import 'package:ecommerce/commons/dialogCustom.dart';
import 'package:ecommerce/models/sorter.dart';
import 'package:ecommerce/myConstant.dart';
import 'package:ecommerce/providers/Items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Newestbtn extends StatefulWidget {
  Newestbtn();

  @override
  _NewestbtnState createState() => _NewestbtnState();
}

class _NewestbtnState extends State<Newestbtn> {

  void func (Sorter selected) {
      Provider.of<ItemProvider>(context, listen: false).reSort(selected);
  }


  @override
  Widget build(BuildContext context) {
  final provider = Provider.of<ItemProvider>(context, listen: true);
  String sortTxt = provider.sorts.firstWhere((e) => e.isSelected == true).name ?? "Newest";

  Padding newest = Padding(padding: EdgeInsets.only(right: 30), 
        child: Row(
                children: [
                  Container(
                    width:MyConstant.sizeIcon,
                    height: MyConstant.sizeIcon,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                      image:AssetImage("assets/icons/sort.png"), 
                      fit:BoxFit.cover
                      ),
                    )
                  ),
                  SizedBox(width: 8,),
                  Text(sortTxt)
                ],
              ),
          );


      return GestureDetector(
        child: newest,
        onTap:(){
                    showDialog(
                      context: context,
                      builder: (ctx) => Dialogcustom(ctx: context, func: func, filters: provider.sorts,)
                    ); 
                    
                  }
      );
  }
}