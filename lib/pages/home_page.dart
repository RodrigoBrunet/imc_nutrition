import 'package:flutter/material.dart';
import 'package:imc_nutrition/widgets/input_age_widget.dart';
import 'package:imc_nutrition/widgets/input_height_widget.dart';
import 'package:imc_nutrition/widgets/input_weight_widget.dart';

import '../widgets/drop_down_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: const Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Calculadora de IMC',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    InputHeightWidget(),
                    SizedBox(
                      width: 30,
                    ),
                    InputWeightWidget(),
                  ],
                ),
                Row(
                  children: [
                    DropDownWidget(),
                    SizedBox(
                      width: 30,
                    ),
                    InputAgeWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
