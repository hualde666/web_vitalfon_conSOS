import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../shared/boton_rojo_beneficios.dart';
import '../shared/colores.dart';
import '../shared/elementos.dart';

class BeneView extends StatelessWidget {
  const BeneView({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    // final alto = MediaQuery.of(context).size.height;
    final List<Widget> imgList = [
      colores(context),
      botonRojoBeneficios(context),
      elementos(context)
    ];

    return Container(
      padding: ancho > 1100
          ? const EdgeInsets.only(top: 130, bottom: 60)
          : ancho > 800
              ? const EdgeInsets.only(top: 120, bottom: 80)
              : const EdgeInsets.only(top: 10, bottom: 10),
      //  color: Colors.amber,
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: CarouselSlider(
            items: imgList,
            options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                aspectRatio: 0.7,
                enlargeCenterPage: true)),
      ),
    );
  }
}
