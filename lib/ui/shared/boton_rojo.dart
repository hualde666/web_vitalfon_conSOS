import 'package:flutter/material.dart';

Widget botonRojoDibujo(BuildContext context) {
  final ancho = MediaQuery.of(context).size.width;

  final double sizeFontIcon = ancho > 1100
      ? 60.0
      : ancho > 700
          ? 40.0
          : 30;
  // final alto = MediaQuery.of(context).size.height;
  return Container(
    width: ancho > 1100
        ? 200
        : ancho > 700
            ? 140
            : 100,
    height: ancho > 1100
        ? 200
        : ancho > 700
            ? 140
            : 100,
    decoration: BoxDecoration(
      color: Colors.red[900],
      shape: BoxShape.circle,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.call, //Icons.health_and_safety_outlined,
            size: sizeFontIcon, // icon,
            color: Colors.white),
        Text(
          'S O S',
          style: TextStyle(
              fontSize: sizeFontIcon, //font,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        )
      ],
    ),
  );
}
