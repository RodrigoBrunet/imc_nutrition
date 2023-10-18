import 'package:flutter/material.dart';

class InputWeightWidget extends StatelessWidget {
  const InputWeightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 170,
      child: TextFormField(
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
