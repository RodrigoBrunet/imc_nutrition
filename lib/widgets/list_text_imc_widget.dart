import 'package:flutter/material.dart';

class ListTextImcWidget extends StatelessWidget {
  final double imc;

  const ListTextImcWidget({super.key, required this.imc});

  @override
  Widget build(BuildContext context) {
    var result1 = imc <= 15.9;
    var result2 = imc > 15.9 && imc <= 16.9;
    var result3 = imc > 16.9 && imc <= 18.4;
    var result4 = imc > 18.4 && imc <= 24.9;
    var result5 = imc > 24.9 && imc <= 29.9;
    var result6 = imc > 29.9 && imc <= 34.9;
    var result7 = imc > 34.9 && imc <= 39.9;
    var result8 = imc > 39.9;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Magreza grave',
                style: TextStyle(
                    color: result1 ? Colors.blue : null,
                    fontWeight: result1 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '<= 15.9',
                style: TextStyle(
                    color: result1 ? Colors.blue : null,
                    fontWeight: result1 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Magreza moderada',
                style: TextStyle(
                    color: result2 ? Colors.blue : null,
                    fontWeight: result2 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '16.0 - 16.9',
                style: TextStyle(
                    color: result2 ? Colors.blue : null,
                    fontWeight: result2 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Magreza leve',
                style: TextStyle(
                    color: result3 ? Colors.blue : null,
                    fontWeight: result3 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '17.0 - 18.4',
                style: TextStyle(
                    color: result3 ? Colors.blue : null,
                    fontWeight: result3 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Saudável',
                style: TextStyle(
                    color: result4 ? Colors.green : null,
                    fontWeight: result4 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '18.5 - 24.9',
                style: TextStyle(
                    color: result4 ? Colors.green : null,
                    fontWeight: result4 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sobrepeso',
                style: TextStyle(
                    color: result5 ? Colors.red.shade300 : null,
                    fontWeight: result5 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '25.0 - 29.9',
                style: TextStyle(
                    color: result5 ? Colors.red.shade300 : null,
                    fontWeight: result5 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Obesidade Grau I',
                style: TextStyle(
                    color: result6 ? Colors.red.shade900 : null,
                    fontWeight: result6 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '30.0 - 34.9',
                style: TextStyle(
                    color: result6 ? Colors.red.shade900 : null,
                    fontWeight: result6 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Obesidade Grau II',
                style: TextStyle(
                    color: result7 ? Colors.red.shade900 : null,
                    fontWeight: result7 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '35.0 - 39.9',
                style: TextStyle(
                    color: result7 ? Colors.red.shade900 : null,
                    fontWeight: result7 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Obesidade Grau III',
                style: TextStyle(
                    color: result8 ? Colors.red.shade900 : null,
                    fontWeight: result8 ? FontWeight.w900 : FontWeight.normal),
              ),
              Text(
                '>= 40.0',
                style: TextStyle(
                    color: result8 ? Colors.red.shade900 : null,
                    fontWeight: result8 ? FontWeight.w900 : FontWeight.normal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
