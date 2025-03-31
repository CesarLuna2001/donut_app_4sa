import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //list of donuts
  final List donutsOnSale = [
    //[ donutFlavor, Sucursales donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kreme" ,"36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Jose Martin", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Dunkin Donuts", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Galaxia Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Proporcion entre ancho y alto 
        childAspectRatio: 1/1.6),
      //Cuantos elementos 
      itemCount: 4,
      padding: EdgeInsets.all(12),
      //como se construiran  
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavor : donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice : donutsOnSale[index][2],
          donutColor : donutsOnSale[index][3],
          imageName : donutsOnSale[index][4],
          
        );
      }
    );
  }
}