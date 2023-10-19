import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWeightWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validador;
  final List<TextInputFormatter>? inputFormatter;
  const InputWeightWidget({
    super.key,
    required this.controller,
    required this.validador,
    this.inputFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 170,
      child: TextFormField(
        inputFormatters: inputFormatter,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 24,
        ),
        controller: controller,
        validator: validador,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
