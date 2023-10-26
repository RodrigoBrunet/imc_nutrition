import 'package:flutter/material.dart';
import 'package:imc_nutrition/models/imc_value_model.dart';

class ListTextImcWidget extends StatelessWidget {
  final ImcModel? imcModel;

  const ListTextImcWidget({super.key, this.imcModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: List.generate(
          listImcModel.length,
          (index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(listImcModel.elementAt(index).title),
              Text(listImcModel.elementAt(index).value),
            ],
          ),
        ),
      ),
    );
  }
}

List<ImcModel> listImcModel = [
  ImcModel(title: 'Magreza grave', value: '<= 15.9'),
  ImcModel(title: 'Magreza moderada', value: '16.0 - 16.9'),
  ImcModel(title: 'Magreza leve', value: '17.0 - 18.4'),
  ImcModel(title: 'Saudável', value: '18.5 - 24.9'),
  ImcModel(title: 'Sobrepeso', value: '25.0 - 29.9'),
  ImcModel(title: 'Obesidade Grau I', value: '30.0 - 34.9'),
  ImcModel(title: 'Obesidade Grau II', value: '35.0 - 39.9'),
  ImcModel(title: 'Obesidade Grau III', value: '>= 40.0'),
];
