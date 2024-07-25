import 'package:flutter/material.dart';

class CorreoProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String correo = '';
  String mensaje = '';
  borrar() {
    correo = '';
    mensaje = '';
    formKey.currentState?.reset();
    notifyListeners();
  }

  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
