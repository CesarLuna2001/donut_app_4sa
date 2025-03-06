import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2),
      //Cuantos elementos 
      itemCount: 4,
      padding: EdgeInsets.all(12),
      //como se construiran  
      itemBuilder: (context, index){
        return ;
      }
    );
  }
}