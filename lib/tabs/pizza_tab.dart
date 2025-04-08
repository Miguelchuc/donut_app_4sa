import 'package:donut_app_4sa/utils/pizzatile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(String, String) onAddToCart; // Función pasada desde HomePage

  // lista de donuts
  final List pizzaOnSale = [
    [
      "Champiñion",
      "pizza hot",
      "36",
      Colors.blue,
      "lib/images/pizzas/champiñon.png"
    ],
    [
      "Cuatro Quesos",
      "Dominos",
      "45",
      Colors.red,
      "lib/images/pizzas/Quesos.png"
    ],
    [
      "Queso Tocino",
      "pizza hermanos",
      "84",
      Colors.purple,
      "lib/images/pizzas/Quesot.png"
    ],
    [
      "Clasica",
      "Merida Donuts",
      "95",
      Colors.brown,
      "lib/images/pizzas/clasica.png"
    ],
    [
      "Mexicana",
      "Baleros",
      "55",
      Colors.yellow,
      "lib/images/pizzas/mexicana.png"
    ],
    [
      "Peperoni Pizza",
      "Little Cesar",
      "140",
      Colors.blueGrey,
      "lib/images/pizzas/peperoni.jpg"
    ],
    [
      "Hawaiian Pizza",
      "Domino's",
      "150",
      Colors.red,
      "lib/images/pizzas/hawai.png"
    ],
    [
      "Peppers Pizza",
      "Bostons",
      "185",
      Colors.blueAccent,
      "lib/images/pizzas/chiles.png"
    ],
  ];

  PizzaTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaStore: pizzaOnSale[index][1],
          pizzaPrice: pizzaOnSale[index][2],
          pizzaColor: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
          onAddToCart: onAddToCart, // Pasamos la función aquí
        );
      },
    );
  }
}
