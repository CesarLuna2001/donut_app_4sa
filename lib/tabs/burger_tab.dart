import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAdd; // Función para agregar un ítem al carrito
  //list of donuts
  final List burgersOnSale = [
    //[ donutFlavor, Sucursales donutPrice, donutColor, imageName ]
    ["Bacon", "BurgerKing" ,"36", Colors.blue, "lib/images/bacon.png"],
    ["Black", "McDonald", "45", Colors.red, "lib/images/black.png"],
    ["Guacamonster", "CapisBurger", "84", Colors.purple, "lib/images/Guacamonster.png"],
    ["NugetBurger", "CarlsJr", "95", Colors.brown, "lib/images/nugetsburger.png"],
    ["Clasica", "BanqueBurgers", "100", Colors.blue, "lib/images/clasic.png"],
    ["TripleMeat", "BobbyChunky", "200", Colors.red, "lib/images/triple.png"],
    ["Chicken", "Zona86", "80", Colors.purple, "lib/images/chicken.png"],
    ["Carnivora", "BackYard", "125", Colors.brown, "lib/images/carnivora.png"],
  ];

  BurgerTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Proporcion entre ancho y alto 
        childAspectRatio: 1/1.8),
      //Cuantos elementos 
      itemCount: 8,
      padding: EdgeInsets.all(12),
      //como se construiran  
      itemBuilder: (context, index){
        return BurgerTile(
          burgerFlavor : burgersOnSale[index][0],
          burgerStore: burgersOnSale[index][1],
          burgerPrice : burgersOnSale[index][2],
          burgerColor : burgersOnSale[index][3],
          imageName : burgersOnSale[index][4],
          onAdd: onAdd
          
        );
      }
    );
  }
}