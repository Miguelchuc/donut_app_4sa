import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(String, String) onAddToCart; // Función pasada desde HomePage

  // lista de donuts
  final List donutsOnSale = [
    [
      "Ice Cream",
      "Dunkin's",
      "36",
      Colors.blue,
      "lib/images/donust/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Krispy Kreme",
      "45",
      Colors.red,
      "lib/images/donust/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Pollos hermanos",
      "84",
      Colors.purple,
      "lib/images/donust/grape_donut.png"
    ],
    [
      "Choco",
      "Merida Donuts",
      "95",
      Colors.brown,
      "lib/images/donust/chocolate_donut.png"
    ],
    ["Taro", "Dunkin's", "50", Colors.purple, "lib/images/donust/taro.png"],
    [
      "Azucarada",
      "Krispy Kreme",
      "35",
      Colors.red,
      "lib/images/donust/azucar.png"
    ],
    [
      "Caramelo",
      "Dunkin's",
      "30",
      Colors.yellow,
      "lib/images/donust/caranelo.png"
    ],
    [
      "Glazed",
      "Krispy Kreme",
      "50",
      Colors.grey,
      "lib/images/donust/glased.png"
    ],
  ];

  DonutTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 2),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAddToCart: onAddToCart, // Pasamos la función aquí
        );
      },
    );
  }
}
