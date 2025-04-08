import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final String burgerStore; 
  //Dynamic porque sera de tipo color 
  final dynamic burgerColor;
  final String imageName;
  final ValueChanged<double> onAdd;
  
  const BurgerTile(
    {super.key, 
    required this.burgerFlavor,
    required this.burgerStore,
    required this.burgerPrice, 
    required this.burgerColor, 
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
          color: burgerColor[50],
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
                    color: burgerColor[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8,
                  horizontal: 18
                  ),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: burgerColor[800],
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
            Text(burgerFlavor, style: TextStyle(
                  //Tamaño de letras
                  fontSize: 20,
                  //Negritas
                  fontWeight: FontWeight.bold,
                  //color
                  //color: donutColor
                ),),

            Text(burgerStore, style: TextStyle(
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
                      color: burgerColor
              
                    )
                  ),
              
                  const SizedBox(height: 15),
              
                  TextButton(
                    onPressed: (){
                      double price = double.tryParse(burgerPrice) ?? 0;
                      onAdd(price); 
                    }, 
                    child: Text("Add", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16, 
                        decoration: TextDecoration.underline,
                        decorationColor: burgerColor,
                        color: burgerColor,
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