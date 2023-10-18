import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputHeightWidget extends StatelessWidget {
  const InputHeightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
      mask: '###.##',
    );
    return SizedBox(
      height: 50,
      width: 170,
      child: TextFormField(
        inputFormatters: [maskFormatter],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 1),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
            hintText: 'Height'),
      ),
    );
  }
}
