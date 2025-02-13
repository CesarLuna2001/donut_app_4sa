import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //Icono de la izquierda
        leading: Icon(Icons.menu,
         color: Colors.grey[800],),
         actions: [Padding(
           padding: const EdgeInsets.only(right: 24.0),
           child: Icon(Icons.person),
         )],
      ),
      body: Column(
        children:[
        //1, Texto principal (Text)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Row(
            children: [
              Text("I Want to "),
              Text("Eat", style: TextStyle(
                //Tamaño de letras
                fontSize: 32,
                //Negritas
                fontWeight: FontWeight.bold,
                //Subrayado 
                decoration: TextDecoration.underline,
              ),),
            ],
          ),
        )


        //2, Pestañas (TabBar)

        //3, Contenido de pestañas (TabBarView)

        //4, Carrito (Cart)

        ],

      ),
      );
  }
}