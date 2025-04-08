import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAdd; // Función para agregar un ítem al carrito
  //list of donuts
  final List pizzasOnSale = [
    //[ donutFlavor, Sucursales donutPrice, donutColor, imageName ]
    ["Peperoni", "Dominos" ,"99", Colors.blue, "lib/images/peperoni.png"],
    ["Combo", "Ajedrez", "300", Colors.red, "lib/images/Combo.png"],
    ["Hawaiana", "Alins", "90", Colors.purple, "lib/images/Hawaiana.png"],
    ["Margarita", "Peter Piper", "168", Colors.brown, "lib/images/Margarita.png"],
    ["MeatPizza", "Perro Negro", "180", Colors.blue, "lib/images/Meatpizza.png"],
    ["Siciliana", "Pizza Hut", "290", Colors.red, "lib/images/PizzaSiciliana.png"],
    ["Queso", "Messinas", "90", Colors.purple, "lib/images/queso.png"],
    ["Vegetariana", "Fud", "105", Colors.brown, "lib/images/Vegetariana.png"],

  ];

  PizzaTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //Proporcion entre ancho y alto 
        childAspectRatio: 1/1.9),
      //Cuantos elementos 
      itemCount: pizzasOnSale.length,
      padding: EdgeInsets.all(12),
      //como se construiran  
      itemBuilder: (context, index){
        return PizzaTile(
          pizzaFlavor : pizzasOnSale[index][0],
          pizzaStore: pizzasOnSale[index][1],
          pizzaPrice : pizzasOnSale[index][2],
          pizzaColor : pizzasOnSale[index][3],
          imageName : pizzasOnSale[index][4],
          onAdd: onAdd,
          
        );
      }
    );
  }
}