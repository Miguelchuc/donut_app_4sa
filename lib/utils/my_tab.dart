import 'package:flutter/material.dart';

class mytab extends StatelessWidget {
  // Ruta del archivo
  final String iconPath;
  const mytab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            //Borde redondeado
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
              //Ruta del archivo
              iconPath,
              color: Colors.grey[600])),
    );
  }
}
