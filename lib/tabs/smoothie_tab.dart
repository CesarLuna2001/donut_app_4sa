import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAdd; // Recibir la función desde HomePage

  SmoothieTab({super.key, required this.onAdd}); // Recibir la función como parámetro

  final List<List<dynamic>> smoothiesOnSale = [
    ["Mango", "SmoothiesToGo", "36", Colors.blue, "lib/images/Mango.jpg"],
    ["Fresa", "Santa Crepa", "45", Colors.red, "lib/images/Fresasmo.jpg"],
    ["Kiwi", "Cafune", "84", Colors.purple, "lib/images/Kiwi.jpg"],
    ["Piña", "Cafe 101", "95", Colors.brown, "lib/images/Piña.jpg"],
    ["Naranja", "Amaranto", "85", Colors.blue, "lib/images/Naranja.jpg"],
    ["MoraAzul", "Texas", "75", Colors.red, "lib/images/MoraAzul.jpg"],
    ["Aguacate", "FrutosLocos", "100", Colors.purple, "lib/images/Aguacate.jpg"],
    ["Piña Loca", "Galacticos", "80", Colors.brown, "lib/images/download.jpg"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2,
      ),
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothieStore: smoothiesOnSale[index][1],
          smoothiePrice: smoothiesOnSale[index][2],
          smoothieColor: smoothiesOnSale[index][3],
          imageName: smoothiesOnSale[index][4],
          onAdd: onAdd,  // Pasar la función de agregar al carrito
        );
      }
    );
  }
}

