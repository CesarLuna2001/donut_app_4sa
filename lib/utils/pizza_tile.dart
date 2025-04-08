import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final String pizzaStore; 
  //Dynamic porque sera de tipo color 
  final dynamic pizzaColor;
  final String imageName;
  final ValueChanged<double> onAdd; // Función para agregar un ítem al carrito
  
  const PizzaTile(
    {super.key, 
    required this.pizzaFlavor,
    required this.pizzaStore,
    required this.pizzaPrice, 
    required this.pizzaColor, 
    required this.imageName,
    required this.onAdd,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        //color: donutColor[50],
        decoration: BoxDecoration(
          color: pizzaColor[50],
          //Esquinas redondeadas 
          borderRadius: BorderRadius.circular(24),  
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8,
                  horizontal: 18
                  ),
                  child: Text(
                    '\$$pizzaPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pizzaColor[800],
                    ),
                  ),
                ),
              ],
            ),
            //Donut price
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                child: Image.asset(imageName),
              ),
            ),

            //Donut Flavor text 
            Text(pizzaFlavor, style: TextStyle(
                  //Tamaño de letras
                  fontSize: 20,
                  //Negritas
                  fontWeight: FontWeight.bold,
                  //color
                  //color: donutColor
                ),),

            Text(pizzaStore, style: TextStyle(
              fontSize: 16
            ),),
            //Icons 

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.favorite_border,  
                      color: pizzaColor
              
                    )
                  ),
              
                  const SizedBox(height: 15),
              
                  TextButton(
                    onPressed: (){
                      double price = double.tryParse(pizzaPrice) ?? 0;
                      onAdd(price); 
                    }, 
                    child: Text("Add", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16, 
                        decoration: TextDecoration.underline,
                        decorationColor: pizzaColor,
                        color: pizzaColor,
                      ),
                    )
                  ),
              
                ],
              ),
            ), 
          ],
        ),
      ),
    );
  }
}