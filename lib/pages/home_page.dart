import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    MyTab(iconPath: 'lib/icons/donut.png', label: 'Donuts',),
    MyTab(iconPath: 'lib/icons/burger.png', label: 'Burgers',),
    MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothies',),
    MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancakes',),
    MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza',),
  ]; 

  // Variables para el carrito
  int itemCount = 0;  // Número de ítems en el carrito
  double totalPrice = 0.0;  // Precio total

  // Función para agregar una dona al carrito
  void addItemToCart(double price) {
    setState(() {
      itemCount++;
      totalPrice += price; // Sumar el precio al total
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [Padding(padding: const EdgeInsets.only(right: 24.0), child: Icon(Icons.person))],
        ),
        body: Column(
          children: [
            // Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Row(
                children: [
                  Text("I Want to ", style: TextStyle(fontSize: 32)),
                  Text("Eat", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
                ],
              ),
            ),
      
            // Pestañas (TabBar)
            TabBar(tabs: myTabs), 
      
            // Contenido de las pestañas (TabBarView)
            Expanded(
              child: TabBarView(children: [
                DonutTab(onAdd: addItemToCart),  // Pasar la función de agregar al carrito
                BurgerTab(onAdd: addItemToCart),
                SmoothieTab(onAdd: addItemToCart),
                PancakesTab(onAdd: addItemToCart),
                PizzaTab(onAdd: addItemToCart),
              ]),
            ),
      
            // Carrito (ShoppingCart)
            ShoppingCart(itemCount: itemCount, totalPrice: totalPrice),
          ],
        ),
      ),
    );
  }
}

