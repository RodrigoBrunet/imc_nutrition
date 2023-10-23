import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWeightWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validador;
  final List<TextInputFormatter>? inputFormatter;
  final String labelText;

  const InputWeightWidget({
    super.key,
    required this.controller,
    required this.validador,
    required this.labelText,
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
          label: Container(
              padding: const EdgeInsets.only(left: 10), child: Text(labelText)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
