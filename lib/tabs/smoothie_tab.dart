import 'package:donut_app_4sa/utils/smoothietile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(String, String) onAddToCart; // Función pasada desde HomePage

  // lista de donuts
  final List smoothieOnSale = [
    ["Fresa", "Pacos´s", "80", Colors.blue, "lib/images/smoothie/fresa.png"],
    ["Mango", "Remen", "70", Colors.red, "lib/images/smoothie/mango.png"],
    [
      "Platano",
      "Pols smoothie",
      "84",
      Colors.purple,
      "lib/images/smoothie/platano.png"
    ],
    [
      "Chocolate",
      "Marist",
      "95",
      Colors.brown,
      "lib/images/smoothie/chocolate.png"
    ],
    [
      "Dragon",
      "Baleros",
      "55",
      Colors.yellow,
      "lib/images/smoothie/dragon.png"
    ],
    [
      "Limon",
      "Martins",
      "140",
      Colors.blueGrey,
      "lib/images/smoothie/limon.png"
    ],
    ["Oreo", "Doms", "150", Colors.red, "lib/images/smoothie/oreo.png"],
    ["Cafe", "Bins", "185", Colors.blueAccent, "lib/images/smoothie/choco.png"],
  ];

  SmoothieTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothieStore: smoothieOnSale[index][1],
          smoothiePrice: smoothieOnSale[index][2],
          smoothieColor: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
          onAddToCart: onAddToCart, // Pasamos la función aquí
        );
      },
    );
  }
}
