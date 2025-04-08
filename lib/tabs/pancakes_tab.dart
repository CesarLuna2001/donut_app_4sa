import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) onAdd; // Función para agregar un ítem al carrito
  //list of donuts
  final List pancakesOnSale = [
    //[ donutFlavor, Sucursales donutPrice, donutColor, imageName ]
    ["Frutos Rojos", "Krispy Kreme" ,"36", Colors.blue, "lib/images/Frutos.jpg"],
    ["Mantequilla", "Jose Martin", "45", Colors.red, "lib/images/mantequilla.jpg"],
    ["ChocolateX", "IHOP", "84", Colors.purple, "lib/images/ChocolateXtreme.jpg"],
    ["ProteinCakes", "PancakesH", "95", Colors.brown, "lib/images/Protein.jpg"],
    ["ChocoPlatano", "CrazyCakes", "105", Colors.blue, "lib/images/Chocoplatano.jpg"],
    ["FresaXtreme", "Cokeis", "129", Colors.red, "lib/images/ExplosionFresa.jpg"],
    ["Chocolate", "ChocoCakes", "100", Colors.purple, "lib/images/chocolate.jpg"],
    ["Fresa", "Libertad", "110", Colors.brown, "lib/images/Fresa.jpg"],
  ];

  PancakesTab({super.key, required this.onAdd});

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
      itemCount: pancakesOnSale.length,
      padding: EdgeInsets.all(12),
      //como se construiran  
      itemBuilder: (context, index){
        return PancakesTile(
          pancakesFlavor : pancakesOnSale[index][0],
          pancakesStore: pancakesOnSale[index][1],
          pancakesPrice : pancakesOnSale[index][2],
          pancakesColor : pancakesOnSale[index][3],
          imageName : pancakesOnSale[index][4],
          onAdd: onAdd,
          
        );
      }
    );
  }
}