import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher_string.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size.width;
    return Container(
      //height: alto * 0.7,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 150),
      padding: const EdgeInsets.all(20),
      //  color: Colors.pink,
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Envia tus comentarios o propuestas a nuestro correo electrónico:',
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSlab(fontSize: ancho > 600 ? 40 : 20)),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.mail_rounded,
              size: ancho > 600 ? 50 : 20,
              color: const Color.fromARGB(228, 255, 119, 0),
            ),
            const SizedBox(
              width: 10,
            ),
            MaterialButton(
                onPressed: () => correoVitalfon(),
                child: Text('atencion_usuarios@vitalfon.com',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                        fontSize: ancho > 800
                            ? 40
                            : ancho > 600
                                ? 25
                                : 15)))
          ],
        )
      ])

          // ChangeNotifierProvider(
          //     create: (_) => CorreoProvider(), child: _EnviarCorreo()),
          ),
    );
  }
}

void correoVitalfon() async {
  const String toEmail = 'atencion_usuarios@vitalfon.com';
  const String asunto = 'Contactando a vitalfon';
  const String contenido = ' ';
  //'Gracias por contactarnos. Nos gustaría leer tus comentarios:   ';

  const url = 'mailto:$toEmail?subject=$asunto&body=$contenido';
  if (await canLaunchUrlString(url)) {
    try {
      await launchUrlString(url);
    } catch (_) {
      rethrow;
    }

    //final resp = await launchUrlString(url);
    //print(resp);
  }
}
