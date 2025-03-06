import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    //GridView para hacer regillas
    return GridView.builder(
        //prepa 1 como se va a organizar
        //sliver: escrol personalizable
        //crossAxiscount eje vertical columnas
        //GridDelegate encargado de organizar
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //numero de columnas
            crossAxisCount: 2),
        //cuantos elementos
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        //Que elemento se construira
        itemBuilder: (context, index) {
          return;
        });
  }
}
