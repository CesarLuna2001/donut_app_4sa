import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAdd; // Recibir la función desde HomePage

  DonutTab({super.key, required this.onAdd}); // Recibir la función como parámetro

  final List<List<dynamic>> donutsOnSale = [
    ["Cacahuate", "Krispy Kreme", "36", Colors.blue, "lib/images/Cacahuate.png"],
    ["Chocolate", "Jose Martin", "45", Colors.red, "lib/images/chocolateGlaseado.png"],
    ["Zarzamora", "Dunkin Donuts", "84", Colors.purple, "lib/images/zarzamora.png"],
    ["ChocoChips", "Galaxia Donuts", "95", Colors.brown, "lib/images/ChocoChispas.png"],
    ["Fresa", "CrazyDonuts", "95", Colors.blue, "lib/images/fresaGlaseado.png"],
    ["Integral", "CrumbleDonuts", "23", Colors.red, "lib/images/Integral.png"],
    ["Platano", "Retorno", "87", Colors.purple, "lib/images/Platano.png"],
    ["Miel", "Tere Cazola", "45", Colors.brown, "lib/images/miel.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.9,
      ),
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAdd: onAdd,  // Pasar la función de agregar al carrito
        );
      }
    );
  }
}


