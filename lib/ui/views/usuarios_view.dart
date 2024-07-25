import 'package:flutter/material.dart';

import 'package:vitalfon_web/ui/shared/mensajes.dart';

import '../shared/titulo.dart';

class UsuariosView extends StatelessWidget {
  const UsuariosView({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;
    if (ancho > 1100 && alto > 450) {
      return vistaDesktop(alto, ancho, 3);
    } else if (ancho > 900 && alto > 450) {
      return vistaDesktop(alto, ancho, 2);
    } else {
      return vistaMobil(alto, ancho);
    }
  }

  Container vistaDesktop(double alto, double ancho, int pantalla) {
    return Container(
      //  height: alto * 0.65,
      // // width: 1500,
      // color: Colors.blue,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 110, bottom: 70),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
            //  color: Colors.pink,
            height: alto,
            width: ancho * 0.50,
            child: _mensajeUsuario(pantalla)),
        // SizedBox(
        //   width: 20,
        // ),
        const SizedBox(
          width: 20,
        ),

        Container(
            width: ancho * 0.4, color: Colors.amber, child: _imagenesUsuarios())
        //color: Colors.green,
      ]),
    );
  }

  Widget vistaMobil(double alto, double ancho) {
    // final listaWidgets = [
    //   titulo('Usuarios de vitalfon. ', true),
    //   const SizedBox(
    //     height: 10,
    //   ),
    //   mensaje(
    //     'Adultos no acostumbrados a celulares o móviles(Adulto mayor / personas mayores). ',
    //     1,
    //   ),
    //   const SizedBox(
    //     height: 10,
    //   ),
    //   mensaje(
    //       'Personas con dificultad para ver y leer; en general problemas de visión',
    //       1),
    //   const SizedBox(
    //     height: 20,
    //   ),
    //   imagenesUsuariosMovil(alto, ancho),
    //   const SizedBox(
    //     height: 20,
    //   ),
    //   mensaje(
    //       '- Niños, ya sea por motivos de seguridad o  al momento de seleccionar el primer teléfono móvil para niños. Este primer teléfono podrá ser totalmente configurado con vitalfon.',
    //       1),
    //   const SizedBox(
    //     height: 10,
    //   ),
    //   mensaje(
    //     '- Personas con alguna discapacidad. ',
    //     1,
    //   ),
    // ];
    return Expanded(
        // height: alto,
        // color: Colors.blue,

        // margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        titulo('Usuarios de vitalfon. ', true),
        const SizedBox(
          height: 10,
        ),
        mensaje(
          'Adultos no acostumbrados a celulares o móviles(Adulto mayor / personas mayores). ',
          1,
        ),
        const SizedBox(
          height: 10,
        ),
        mensaje(
            'Personas con dificultad para ver y leer; en general problemas de visión',
            1),
        const SizedBox(
          height: 20,
        ),
        imagenesUsuariosMovil(alto, ancho),
        const SizedBox(
          height: 20,
        ),
        mensaje(
            '- El primer celular para niño podrá ser totalmente configurado con vitalfon.',
            1),
        const SizedBox(
          height: 10,
        ),
        mensaje(
          '- Personas con alguna discapacidad. ',
          1,
        ),
      ],
    ));
  }

  Widget _imagenesUsuarios() {
    return const Image(
      image: AssetImage("assets/abuelo_nieta.jpg"),
      fit: BoxFit.contain,
    );
  }

  imagenesUsuariosMovil(double alto, double ancho) {
    return Image(
      height: alto * 0.30,
      image: const AssetImage("abuelo_nieta.jpg"),
      // height: 400,
      // width: 400,
      fit: BoxFit.contain,
    );
  }
}

Widget _mensajeUsuario(int pantalla) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      titulo('Usuarios de vitalfon. ', false),
      const SizedBox(
        height: 20,
      ),
      mensaje(
          'Adultos no acostumbrados a celulares o móviles (Adulto mayor / personas mayores). ',
          pantalla),
      const SizedBox(
        height: 20,
      ),
      mensaje(
          'Personas con dificultad para ver y leer; en general problemas de visión',
          pantalla),
      const SizedBox(
        height: 20,
      ),
      mensaje(
          'Niños, ya sea por motivos de seguridad o  al momento de seleccionar el primer teléfono móvil para niños. Este primer teléfono podrá ser totalmente configurado con vitalfon.',
          pantalla),
      const SizedBox(
        height: 20,
      ),
      mensaje(
        ' Personas con alguna discapacidad. ',
        pantalla,
      ),
    ],
  );
}
