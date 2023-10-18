import 'package:flutter/material.dart';
import 'package:imc_nutrition/utils/list_value_height.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 170,
      child: DropdownButtonFormField(
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(bottom: 1, left: 10, right: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            )),
        items: dropDownName,
        hint: Container(
          alignment: Alignment.center,
          width: 120,
          child: const Text('Sex'),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
