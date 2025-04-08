import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  //Ruta del archivo
  //C:/Cesar/Documentos/4sa/Donut_app
  final String iconPath;  
  final String label;
  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 60, 
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              //Borde redondeado 
              borderRadius: BorderRadius.circular(16)
            ),
            child: Image.asset(
              //Ruta del archivo
              iconPath, 
              color: Colors.grey[600]
            
            )
          ),
          const SizedBox(height: 4),
          Text(label,
            style: TextStyle(
              fontSize: 8,
              color: Colors.grey[600]
            ),
          ),
        ],
      ),
      
    );
  }
}