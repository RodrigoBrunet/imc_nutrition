import 'package:flutter/material.dart';

class InputHeight extends StatelessWidget {
  const InputHeight({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 180,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          label: Text(label),
        ),
      ),
    );
  }
}
