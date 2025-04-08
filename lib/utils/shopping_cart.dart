import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  final int itemCount;  // Número de ítems en el carrito
  final double totalPrice;  // Precio total de los ítems

  // Constructor que recibe la cantidad de ítems y el precio total
  const ShoppingCart({
    super.key,
    required this.itemCount,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Mostrar la cantidad de ítems y el precio total
                Text('$itemCount Items | \$${totalPrice.toStringAsFixed(2)}', 
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const Text('Delivery Charges Included'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'View cart',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

