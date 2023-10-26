import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputDataWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validador;
  final List<TextInputFormatter>? inputFormatter;
  final String? labelText;
  final int? maxLenght;

  const InputDataWidget(
      {super.key,
      required this.controller,
      required this.validador,
      this.labelText,
      this.inputFormatter,
      this.maxLenght});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 170,
      child: TextFormField(
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 24,
        ),
        controller: controller,
        validator: validador,
        maxLength: maxLenght,
        inputFormatters: inputFormatter,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        ),
      ),
    );
  }
}
