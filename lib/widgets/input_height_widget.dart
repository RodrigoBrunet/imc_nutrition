import 'package:flutter/material.dart';

class InputHeightWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validador;

  const InputHeightWidget({
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
        maxLength: 4,
        controller: controller,
        validator: validador,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: const EdgeInsets.only(bottom: 1),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          hintText: 'Height',
        ),
      ),
    );
  }
}
