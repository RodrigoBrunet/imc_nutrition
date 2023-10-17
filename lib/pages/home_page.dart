import 'package:flutter/material.dart';
import 'package:imc_nutrition/widgets/input_height.dart';

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
          children: [
            Text(
              'Calculadora de IMC',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                InputHeight(
                  label: 'Height',
                ),
                SizedBox(
                  width: 20,
                ),
                InputHeight(
                  label: 'Weight',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
