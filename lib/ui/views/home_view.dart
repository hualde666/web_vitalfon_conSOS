import 'package:flutter/material.dart';

import '../shared/mensajes.dart';
//

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    final alto = MediaQuery.of(context).size.height;
    if (ancho > 1100 && alto > 400) {
      return homeDesk(alto, ancho, 3);
    } else if (ancho > 500 && alto > 450) {
      return homeDesk(alto, ancho, 2);
    }
    return homeMovil(alto, ancho);
  }
}

Container homeMovil(double alto, double ancho) {
  return Container(
    // height: alto,
    // color: Colors.blue,

    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // titulo('Bondades de  vitalfon. ', true),
        mensaje(
            'El app vitalfon adapta tu Android para hacerlo mas accesible. Incluye un botón de pánico para emergencias. ',
            1),

        //         mensaje(' Usar tu celular o movil ya no será complicado!!!', 1),
        // const SizedBox(
        //   height: 30,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: ancho > 1100 ? alto * 0.5 : alto * 0.4,
              image: const AssetImage("assets/color1.jpg"),
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: alto * 0.4,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: ancho * 0.5,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: mensaje(
                        ' Podras ajustar y simplificar el teléfono movil para uso de personas mayores y niños (Con ontrol parental). También para persona con alguna discapacidad.',
                        1),
                  ),
                ],
              ),
            ),

            //  mensaje(
            //     'La app permite crear una interfaz que simplifique el uso de teléfonos móviles o celulares según sea necesario... ',
            //     1),
          ],
        ),

        Container(
            //  width: ancho * 0.5,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: mensaje(
                ' Incluso adaptarlo a un niño o niña limitándolo exclusivamente al uso y funcionalidades que quieras que acceda según su edad. ',
                1)),
        //  mensaje(
        //     'Pensamos en usuarios como: personas mayores; adulto mayor; personas con problemas de visión o alguna discapacidad o el primer teléfono móvil para niños',
        //     1)),

        // Container(
        //     width: ancho * 0.5,
        //     padding: const EdgeInsets.symmetric(horizontal: 20),
        //     child: mensaje(' Configuralo a tu gusto', 1))
      ],
    ),
  );
}

Widget homeDesk(double alto, double ancho, int pantalla) {
  return Container(
    height: alto * 0.65,
    margin: const EdgeInsets.only(left: 20, right: 20, top: 115, bottom: 70),
    // color: Color.fromARGB(255, 129, 188, 237),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          //  color: Color.fromRGBO(233, 30, 99, 1),
          height: alto,
          width: ancho * 0.60, //ancho * 0.7,
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          child: _mensajeHome(pantalla),
          //color: Colors.green,
        ),
        SizedBox(
          width: ancho * 0.3,
          //    height: alto * 0.9,
          //  color: Colors.amber,
          child: imagen1(),
        ),
      ],
    ),
  );
}

// ignore: must_be_immutable
// class Imagen1 extends StatelessWidget {
//   final bool movil;
//   const Imagen1({super.key, required this.movil});

@override
Widget imagen1() {
  // final double alto = movil ? 250 : 700;
  // final double ancho = movil ? 250 : 700;

  // final double alto = movil ? 50.0 : 600.0;
  return Transform(
    transform: Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateY(0.4),
    alignment: Alignment.centerRight,
    // ignore: avoid_unnecessary_containers
    child: Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
      child: const Image(
        //height: alto,
        image: AssetImage("color1.jpg"),
        fit: BoxFit.contain,
      ),
    ),
  );
}

Widget _mensajeHome(int pantalla) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      mensaje(
          'El app vitalfon adapta tu Android para hacerlo mas accesible. Incluye un botón de pánico para emergencias. ',
          pantalla),

      const SizedBox(
        height: 10,
      ),
      // mensaje(
      //     ' Teléfono móvil para personas mayores y niños (Con control parental). También para persona con alguna discapacidad. Incluye un botón de pánico para emergencias.',
      //     pantalla),
      mensaje(
          'Podrás ajustar y simplificar el teléfono  móvil para que sea usado por personas mayores y niños (Control de acceso a internet).También para persona con alguna discapacidad.',
          pantalla),

      const SizedBox(
        height: 10,
      ),
      // mensaje(' Incluye un botón de pánico para emergencias.', pantalla),

      // const SizedBox(
      //   height: 10,
      // ),
      mensaje(
          ' Podrás adecuarlo a las necesidades específicas de una persona mayor con mas o menos habilidad digital. ',
          pantalla),
      const SizedBox(
        height: 10,
      ),
      mensaje(
          ' Incluso adaptarlo a un niño o niña limitándolo exclusivamente al uso y funcionalidades que quieras que acceda según su edad. ',
          pantalla),
      // mensaje('Usar tu celular o movil ya no será complicado!!!', pantalla),
      const SizedBox(
        height: 10,
      ),
      // titulo('Bondades de vitalfon. ', false),
      // const SizedBox(
      //   height: 20,
      // ),
      // mensaje('Usar tu celular o movil ya no será complicado!!!', pantalla),
      // const SizedBox(
      //   height: 10,
      // ),
      // mensaje(
      //     'El app permite crear una interfaz que simplifique el uso de teléfonos móviles o celulares según sea necesario... ',
      //     pantalla),
      // const SizedBox(
      //   height: 10,
      // ),
      // mensaje(
      //     'Pensamos en usuarios como: personas mayores; adulto mayor; personas con problemas de visión o alguna discapacidad o el primer teléfono móvil para niños',
      //     pantalla)
    ],
  );
}
