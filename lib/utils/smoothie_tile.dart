import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final String smoothieStore;
  final dynamic smoothieColor;
  final String imageName;
  final ValueChanged<double> onAdd; // Función para agregar un ítem al carrito

  const SmoothieTile({
    super.key,
    required this.smoothieFlavor,
    required this.smoothieStore,
    required this.smoothiePrice,
    required this.smoothieColor,
    required this.imageName,
    required this.onAdd,  // Recibe la función para agregar un ítem
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: smoothieColor[100],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$smoothiePrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: smoothieColor[800],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                child: Image.asset(imageName),
              ),
            ),
            Text(smoothieFlavor, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(smoothieStore, style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border, color: smoothieColor),
                  ),
                  TextButton(
                    onPressed: () {
                      double price = double.tryParse(smoothiePrice) ?? 0;
                      onAdd(price); // Llamar a onAdd con el precio de la dona
                    },
                    child: Text("Add", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16, color: smoothieColor)),
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