import 'package:flutter/material.dart';

class Controller {
  final key = GlobalKey<FormState>();

  final TextEditingController controllerAlcool = TextEditingController();
  final TextEditingController controllerGasolina = TextEditingController();
  var result = 0.0;

  void calcular() {
    if (key.currentState!.validate()) {
      double precoAlcool = double.parse(controllerAlcool.text);
      double precoGasolina = double.parse(controllerGasolina.text);
      result = precoAlcool / precoGasolina;
    }
  }
}
