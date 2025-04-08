import 'package:donut_app_4sa/utils/burgertile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(String, String) onAddToCart; // Función pasada desde HomePage

  // lista de donuts
  final List burgerOnSale = [
    [
      "CheeseBurger",
      "Dunkin's",
      "100",
      Colors.blue,
      "lib/images/burguers/chess.jpg"
    ],
    [
      "Crispy Burger",
      "Krispy Kreme",
      "104",
      Colors.red,
      "lib/images/burguers/crispy.png"
    ],
    [
      "champi Burger",
      "Pollos hermanos",
      "120",
      Colors.purple,
      "lib/images/burguers/champi.jpg"
    ],
    [
      "Tocino Burger",
      "Merida Donuts",
      "95",
      Colors.brown,
      "lib/images/burguers/tocino.png"
    ],
    [
      "Guaca Burger",
      "Angry Angus",
      "125",
      Colors.brown,
      "lib/images/burguers/guaca.png"
    ],
    [
      "Italian Burger",
      "Fridays,",
      "150",
      Colors.lightGreen,
      "lib/images/burguers/italian.png"
    ],
    [
      "Big Mac",
      "Mc'Donalds",
      "185",
      Colors.yellow,
      "lib/images/burguers/bigmag.png"
    ],
    [
      "Fish Burger",
      "El camaron",
      "145",
      Colors.lightBlue,
      "lib/images/burguers/fhis.png"
    ],
  ];

  BurgerTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerStore: burgerOnSale[index][1],
          burgerPrice: burgerOnSale[index][2],
          burgerColor: burgerOnSale[index][3],
          imageName: burgerOnSale[index][4],
          onAddToCart: onAddToCart, // Pasamos la función aquí
        );
      },
    );
  }
}
