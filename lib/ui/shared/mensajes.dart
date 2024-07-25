import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mensaje(String mensaje, int pantalla) {
  return Text(mensaje,
      textAlign: TextAlign.center,
      style: GoogleFonts.robotoSlab(fontSize: pantalla != 3 ? 15 : 23));
}
// Container mensaje(String mensaje, bool movil) {
