import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PiePagina extends StatelessWidget {
  const PiePagina({super.key});

  @override
  Widget build(BuildContext context) {
    SystemMouseCursor cursor = SystemMouseCursors.click;
    final bool movil = MediaQuery.of(context).size.width < 501 ? true : false;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.black12,
        height: movil ? 40 : 60,
        //       color: Colors.amber,
        // margin: const EdgeInsets.symmetric(horizontal: 25),
        // padding: EdgeInsets.symmetric(horizontal: 100),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    'Descárgala, gratis en fase de prueba, en Google Play y danos tus comentarios!!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                      fontSize: movil ? 13 : 15,
                    )),
                MouseRegion(
                  cursor: cursor,
                  child: GestureDetector(
                    onTap: () async {
                      const String urlGooglePlay =
                          'https://play.google.com/store/apps/details?id=com.piproy.vitalfon';
                      if (await canLaunchUrlString(urlGooglePlay)) {
                        await launchUrlString(urlGooglePlay);
                      }
                    },
                    child: const SizedBox(
                      height: 40,
                      child: Image(
                        image: AssetImage("google_play_logo.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
