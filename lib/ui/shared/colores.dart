import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

colores(BuildContext context) {
  final ancho = MediaQuery.of(context).size.width;
  final alto = MediaQuery.of(context).size.height;
  if (ancho > 700) {
    return coloresDesk(ancho, alto);
  } else {
    return coloresMovil(ancho, alto);
  }
}

Container coloresMovil(double ancho, double alto) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    color: const Color.fromARGB(31, 176, 175, 175),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: ancho,
          // color: Colors.amber,
          child: Center(
            child: Text(
              'Variedad de Colores',
              style: GoogleFonts.montserratAlternates(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: ancho,
          // color: Colors.amber,
          child: Center(
            child: Text(
              'Escoje entre cinco colores. Uno de ellos de alto contraste.',
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(
                fontSize: 15,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: alto * 0.25,
                image: const AssetImage("assets/color2.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            Image(
              height: alto * 0.25,
              image: const AssetImage("assets/color1.jpg"),
              fit: BoxFit.contain,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: alto * 0.25,
                image: const AssetImage("assets/color3.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: alto * 0.25,
                image: const AssetImage("assets/color5.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: alto * 0.25,
                image: const AssetImage("assets/color4.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Container coloresDesk(double ancho, double alto) {
  return Container(
    width: ancho,
    height: alto,
    // padding: EdgeInsets.only(left: 100, right: 100),
    // color: Colors.pink,
    //  margin: EdgeInsets.symmetric(vertical: 60),
    //  padding: EdgeInsets.all(10),
    color: const Color.fromARGB(31, 176, 175, 175),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: ancho,
          // color: Colors.amber,
          child: Center(
            child: Text(
              'Variedad de Colores',
              style: GoogleFonts.montserratAlternates(
                  fontSize: ancho > 1100 ? 40 : 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: ancho,
          // color: Colors.amber,
          child: Center(
            child: Text(
              'Escoje entre cinco colores. Uno de ellos de alto contraste.',
              style: GoogleFonts.robotoSlab(
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              height: ancho > 1100 ? alto * 0.4 : alto * 0.3,
              image: const AssetImage("assets/color5.jpg"),
              fit: BoxFit.contain,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: ancho > 1100 ? alto * 0.45 : alto * 0.33,
                image: const AssetImage("assets/color2.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: ancho > 1100 ? alto * 0.5 : alto * 0.4,
                image: const AssetImage("assets/color1.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: ancho > 1100 ? alto * 0.45 : alto * 0.33,
                image: const AssetImage("assets/color3.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: ancho > 1100 ? alto * 0.4 : alto * 0.30,
                image: const AssetImage("assets/color4.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
