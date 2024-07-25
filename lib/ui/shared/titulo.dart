import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

titulo(String mensaje, bool movil) {
  return Text(mensaje,
      textAlign: TextAlign.center,
      style: GoogleFonts.robotoSlab(
          fontSize: movil ? 20 : 30, fontWeight: FontWeight.bold));
}
