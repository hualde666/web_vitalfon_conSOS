import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'boton_rojo.dart';

botonRojoBeneficios(BuildContext context) {
  final ancho = MediaQuery.of(context).size.width;
  final alto = MediaQuery.of(context).size.height;
  if (ancho > 700) {
    return botonDesk(ancho, alto, context);
  } else {
    return botonMovil(ancho, alto, context);
  }
}

Container botonDesk(double ancho, double alto, BuildContext context) {
  return Container(
    //  margin: EdgeInsets.symmetric(vertical: 60),
    //  padding: EdgeInsets.all(10),
    color: const Color.fromARGB(31, 176, 175, 175),
    width: ancho,
    height: alto,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: ancho,
          // color: Colors.amber,
          child: Center(
            child: Text(
              'Boton de emergencia',
              style: GoogleFonts.robotoSlab(
                  fontSize: ancho > 1100 ? 40 : 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            botonRojoDibujo(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: ancho > 1100 ? 280 : 180,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      // height: alto * 0.5,
                      //  color: Colors.amber,
                      child: Center(
                        child: Text(
                          'El boton rojo permite enviar mensaje de emergencia con geolocalización a los contactos seleccionados previamente',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoSlab(
                            fontSize: ancho > 1100 ? 20 : 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: ancho > 1100 ? 280 : 180,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      // height: alto * 0.5,
                      //    color: Colors.amber,
                      child: Center(
                        child: Text(
                          'Una vez enviado el mensaje, se realizará una llamada al contacto previamente seleccionado',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoSlab(
                            fontSize: ancho > 1100 ? 20 : 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: ancho > 1100 ? alto * 0.5 : alto * 0.35,
                image: const AssetImage("assets/mensaje_emergencia.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Image(
                height: ancho > 1100 ? alto * 0.5 : alto * 0.35,
                image: const AssetImage("assets/llamada_emergencia.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Container botonMovil(double ancho, double alto, BuildContext context) {
  // final listaWidgets = [
  //   Container(
  //     width: ancho,
  //     // color: Colors.amber,
  //     child: Center(
  //       child: Text(
  //         'Boton de emergencia',
  //         style:
  //             GoogleFonts.robotoSlab(fontSize: 20, fontWeight: FontWeight.bold),
  //       ),
  //     ),
  //   ),
  //   SizedBox(
  //     height: 10,
  //   ),
  //   botonRojoDibujo(context),
  //   Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: [
  //       Container(
  //         width: 150,
  //         padding: EdgeInsets.symmetric(horizontal: 20),
  //         // height: alto * 0.5,
  //         //  color: Colors.amber,
  //         child: Center(
  //           child: Text(
  //             'El boton rojo permite enviar mensaje de emergencia con geolocalización a los contactos seleccionados previamente.',
  //             textAlign: TextAlign.center,
  //             style: GoogleFonts.robotoSlab(
  //               fontSize: 10,
  //             ),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         child: Image(
  //           height: alto * 0.25,
  //           image: AssetImage("assets/mensaje_emergencia.jpg"),
  //           fit: BoxFit.contain,
  //         ),
  //       ),
  //     ],
  //   ),
  //   SizedBox(
  //     height: 20,
  //   ),
  //   Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: [
  //       Container(
  //         width: 150,
  //         padding: EdgeInsets.symmetric(horizontal: 20),
  //         // height: alto * 0.5,
  //         //    color: Colors.amber,
  //         child: Center(
  //           child: Text(
  //             'Una vez enviado el mensaje, se realizará una llamada al contacto previamente seleccionado',
  //             textAlign: TextAlign.center,
  //             style: GoogleFonts.robotoSlab(
  //               fontSize: 10,
  //             ),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         child: Image(
  //           height: alto * 0.25,
  //           image: AssetImage("assets/llamada_emergencia.jpg"),
  //           fit: BoxFit.contain,
  //         ),
  //       )
  //     ],
  //   ),
  // ];

  return Container(
      // height: alto,
      // width: ancho,
      color: const Color.fromARGB(31, 176, 175, 175),
      // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: ancho,
            // color: Colors.amber,
            child: Center(
              child: Text(
                'Boton de emergencia',
                style: GoogleFonts.robotoSlab(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          botonRojoDibujo(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: ancho * 0.5,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // height: alto * 0.5,
                //  color: Colors.amber,
                child: Center(
                  child: Text(
                    'El boton rojo permite enviar mensaje de emergencia con geolocalización a los contactos seleccionados previamente.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Image(
                  height: alto * 0.25,
                  image: const AssetImage("assets/mensaje_emergencia.jpg"),
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
                  image: const AssetImage("assets/llamada_emergencia.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: ancho * 0.5,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // height: alto * 0.5,
                //    color: Colors.amber,
                child: Center(
                  child: Text(
                    'Enviado el mensaje, se realizará una llamada al contacto  seleccionado',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ));
}
