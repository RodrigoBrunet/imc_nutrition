import 'package:flutter/material.dart';

class InputWeightWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validador;
  const InputWeightWidget({
    super.key,
    required this.controller,
    required this.validador,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 170,
      child: TextFormField(
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 24,
        ),
        controller: controller,
        validator: validador,
        maxLength: 6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: const EdgeInsets.only(bottom: 1),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          hintText: 'Weight',
        ),
      ),
    );
  }
}
