import 'package:donut_app_4sa/utils/pancaketile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(String, String) onAddToCart; // Función pasada desde HomePage

  // lista de donuts
  final List pancakeOnSale = [
    [
      "Pancakes Frutales",
      "Dunkin's",
      "36",
      Colors.blue,
      "lib/images/pancakes/frutales.jpg"
    ],
    [
      "Pacakes chocolate",
      "Rosita Comedor",
      "45",
      Colors.red,
      "lib/images/pancakes/choco.png"
    ],
    [
      "Pancakes Americanos",
      "Tres hermanos",
      "90",
      Colors.purple,
      "lib/images/pancakes/americano.png"
    ],
    [
      "Pancakes Rellenos",
      "Merida Hotel",
      "195",
      Colors.brown,
      "lib/images/pancakes/relleno.png"
    ],
    [
      "Banana Pancake",
      "iHop",
      "55",
      Colors.yellow,
      "lib/images/pancakes/banana.png"
    ],
    [
      "Calabaza Pancake",
      "Vips",
      "45",
      Colors.blueGrey,
      "lib/images/pancakes/calabaza.png"
    ],
    [
      "Strawberry Pancake",
      "Liverpool",
      "80",
      Colors.red,
      "lib/images/pancakes/fresa.jpg"
    ],
    [
      "Jumbo Pancake",
      "Wendy's",
      "85",
      Colors.blueAccent,
      "lib/images/pancakes/jumbo.png"
    ],
  ];

  PancakesTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PancakesTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakeStore: pancakeOnSale[index][1],
          pancakePrice: pancakeOnSale[index][2],
          pancakeColor: pancakeOnSale[index][3],
          imageName: pancakeOnSale[index][4],
          onAddToCart: onAddToCart, // Pasamos la función aquí
        );
      },
    );
  }
}
