import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  var imc = 0.0;

  void calcImc({required double peso, required double altura}) {
    imc = peso / (altura * altura);
    notifyListeners();
  }

  returnColor() {
    switch (imc) {
      case >= 12.5 && <= 18.5:
        return Colors.blue;
      case > 18.5 && <= 24.5:
        return Colors.green;
      case > 24.5 && <= 30.5:
        return Colors.yellow.shade400;
      case > 30.5 && <= 39.5:
        return Colors.red.shade300;
      case > 39.5 && <= 48.5:
        return Colors.red.shade900;
    }
    notifyListeners();
  }

  returnText() {
    switch (imc) {
      case >= 12.5 && <= 18.5:
        return 'Abaixo do peso';
      case > 18.5 && <= 24.5:
        return 'Peso normal';
      case > 24.5 && <= 30.5:
        return 'Sobrepeso';
      case > 30.5 && <= 39.5:
        return 'Obesidade';
      case > 39.5 && <= 48.5:
        return 'Obesidade grave';
    }
    notifyListeners();
  }
}
