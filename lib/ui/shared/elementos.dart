import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

elementos(BuildContext context) {
  final ancho = MediaQuery.of(context).size.width;
  final alto = MediaQuery.of(context).size.height;
  if (ancho > 1100) {
    return elementosDesk(ancho, alto);
  } else {
    return elementoMovil(ancho, alto);
  }
}

Container elementosDesk(double ancho, double alto) {
  return Container(
    padding: const EdgeInsets.only(left: 20, right: 20),
    width: ancho,
    height: alto,
    // padding: EdgeInsets.all(10),
    color: const Color.fromARGB(31, 176, 175, 175),
    // color: Colors.red,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: ancho,
          // color: Colors.amber,
          child: Center(
            child: Text(
              'Distribución de elementos',
              style: GoogleFonts.robotoSlab(
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
              'Configura vitalfon con los elementos que mas utilizas.',
              style: GoogleFonts.robotoSlab(
                fontSize: 20,
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: 50,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black45)),
              child: Image(
                height: ancho > 1100 ? alto * 0.50 : alto * 0.40,
                image: const AssetImage("assets/color1.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            // SizedBox(
            //   width: 25,
            // ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black45)),
              child: Image(
                height: ancho > 1100 ? alto * 0.50 : alto * 0.40,
                image: const AssetImage("assets/pantalla_basica.jpg"),
                fit: BoxFit.contain,
              ),
            ),

            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black45)),
              child: Image(
                height: ancho > 1100 ? alto * 0.50 : alto * 0.40,
                image: const AssetImage("assets/elementos.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            // SizedBox(
            //   width: 50,
            // ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black45)),
              child: Image(
                height: ancho > 1100 ? alto * 0.50 : alto * 0.40,
                image: const AssetImage("assets/configuracion.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black45)),
              child: Image(
                height: ancho > 1100 ? alto * 0.50 : alto * 0.40,
                image: const AssetImage("assets/grupos.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Container elementoMovil(double ancho, double alto) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    color: const Color.fromARGB(31, 176, 175, 175),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
        width: ancho,
        // color: Colors.amber,
        child: Center(
          child: Text(
            'Distribución de elementos',
            style: GoogleFonts.robotoSlab(
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
            textAlign: TextAlign.center,
            'Configura vitalfon con los elementos que mas utilizas.',
            style: GoogleFonts.robotoSlab(
              fontSize: 15,
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
            child: Image(
              height: alto * 0.25,
              image: const AssetImage("assets/color1.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          // SizedBox(
          //   width: 25,
          // ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
            child: Image(
              height: alto * 0.25,
              image: const AssetImage("assets/elementos.jpg"),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
            child: Image(
              height: alto * 0.25,
              image: const AssetImage("assets/grupos.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          // SizedBox(
          //   width: 50,
          // ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
            child: Image(
              height: alto * 0.25,
              image: const AssetImage("assets/pantalla_basica.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
            child: Image(
              height: alto * 0.25,
              image: const AssetImage("assets/configuracion.jpg"),
              fit: BoxFit.contain,
            ),
          ),
        ],
      )
    ]),
  );
}
