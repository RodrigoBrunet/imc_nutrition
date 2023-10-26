import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeController extends ChangeNotifier {
  var imc = 0.0;
  var idealWeightMan = 0.0;
  double? pesoDouble;
  double? alturaDouble;

  var formatter =
      NumberFormat.simpleCurrency(locale: 'pt_BR', decimalDigits: 2);

  Future<void> calcImc({required double peso, required double altura}) async {
    imc = peso / (altura * altura);
    notifyListeners();
  }

  returnTextWeightFeedBack({required String altura, required String peso}) {
    if (altura.isNotEmpty && peso.isNotEmpty) {
      pesoDouble = formatter.parse(peso) as double;
      alturaDouble = formatter.parse(altura) as double;
      idealWeightMan =
          (pesoDouble!.roundToDouble()) - ((alturaDouble! - 1.00) * 0.9) * 100;
      if (idealWeightMan > 0 && imc > 18.4 && imc <= 24.9) {
        return 'Ótimo!';
      } else if (idealWeightMan > 0) {
        return '+${idealWeightMan.roundToDouble()} kg!';
      } else if (idealWeightMan < 0) {
        return '${idealWeightMan.roundToDouble()} kg!';
      }
      return idealWeightMan.roundToDouble();
    }

    notifyListeners();
  }

  returnColor() {
    switch (imc) {
      case < 16.5:
        return Colors.blue;
      case >= 16.5 && <= 18.5:
        return Colors.blue;
      case > 18.5 && <= 24.5:
        return Colors.green;
      case > 24.5 && <= 30.5:
        return Colors.yellow.shade400;
      case > 30.5 && <= 39.5:
        return Colors.red.shade300;
      case > 39.5:
        return Colors.red.shade900;
    }

    notifyListeners();
  }
}
