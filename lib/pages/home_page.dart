import 'package:flutter/material.dart';
import 'package:imc_nutrition/widgets/input_height_widget.dart';

import '../widgets/state_switch_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 52,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calculadora de IMC',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InputHeightWidget(),
                SizedBox(
                  width: 30,
                ),
                InputHeightWidget(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SwitchWidget(),
          ],
        ),
      ),
    );
  }
}
