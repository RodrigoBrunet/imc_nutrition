import 'package:flutter/material.dart';

List<DropdownMenuItem<double>> get dropDownName {
  List<DropdownMenuItem<double>> menuItens = [
    const DropdownMenuItem(value: 1, child: Text('Male')),
    const DropdownMenuItem(value: 2, child: Text('Famale')),
  ];
  return menuItens;
}
