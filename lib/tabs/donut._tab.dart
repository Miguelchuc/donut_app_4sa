import "package:donut_app_4sa/utils/donut_tile.dart";
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final List donutsOnSale = [
    [
      "Ice Cream",
      "Donass hunucma",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Stramberry",
      "Donas cenote",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Donas donitas",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],
    [
      "Choco",
      "Donas conchita",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
  ];

  DonutTab({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Prepa 1: Como se va a organizar
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //proporcion entre ancho y largo
            childAspectRatio: 1 / 1.5),
        //Cuantos elementos
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        //Que elemento se construira
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
          );
        });
  }
}
