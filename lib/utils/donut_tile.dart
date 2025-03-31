import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutStore; 
  //Dynamic porque sera de tipo color 
  final dynamic donutColor;
  final String imageName;
  
  const DonutTile(
    {super.key, 
    required this.donutFlavor,
    required this.donutStore,
    required this.donutPrice, 
    required this.donutColor, 
    required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        //color: donutColor[50],
        decoration: BoxDecoration(
          color: donutColor[50],
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
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8,
                  horizontal: 18
                  ),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: donutColor[800],
                    ),
                  ),
                ),
              ],
            ),
            //Donut price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Image.asset(imageName),
            ),

            //Donut Flavor text 
            Text(donutFlavor, style: TextStyle(
                  //Tamaño de letras
                  fontSize: 20,
                  //Negritas
                  fontWeight: FontWeight.bold,
                  //color
                  //color: donutColor
                ),),

            Text(donutStore, style: TextStyle(
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
                      color: donutColor
              
                    )
                  ),
              
                  const SizedBox(height: 15),
              
                  TextButton(
                    onPressed: (){}, 
                    child: Text("Add", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16, 
                        decoration: TextDecoration.underline,
                        decorationColor: donutColor,
                        color: donutColor,
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