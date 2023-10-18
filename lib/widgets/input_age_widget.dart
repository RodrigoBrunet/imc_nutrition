import 'package:flutter/material.dart';

class InputAgeWidget extends StatelessWidget {
  const InputAgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 170,
      child: TextFormField(
        maxLength: 2,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: const EdgeInsets.only(bottom: 1),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          hintText: 'Age',
        ),
      ),
    );
  }
}
