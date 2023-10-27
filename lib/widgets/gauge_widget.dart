import 'package:flutter/material.dart';
import 'package:imc_nutrition/widgets/gauge_range_widget.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GaugeWidget extends StatelessWidget {
  final double imc;

  const GaugeWidget({super.key, required this.imc});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SfRadialGauge(
        axes: [
          RadialAxis(
            showLabels: false,
            showAxisLine: false,
            showTicks: false,
            minimum: 12.5,
            maximum: 47.9,
            ranges: [
              GaugeRangeWidget(
                color: Colors.blue,
                start: 12.5,
                end: 18.4,
                label: 'Magreza',
              ),
              GaugeRangeWidget(
                color: Colors.green,
                start: 18.4,
                end: 24.9,
                label: 'Saudável',
              ),
              GaugeRangeWidget(
                color: Colors.yellow.shade400,
                start: 24.9,
                end: 29.9,
                label: 'Sobrepeso',
              ),
              GaugeRangeWidget(
                color: Colors.red.shade300,
                start: 29.9,
                end: 34.9,
                label: 'Obesidade',
              ),
              GaugeRangeWidget(
                color: Colors.red.shade900,
                start: 34.9,
                end: 48.5,
                label: 'Obesidade Grave',
              ),
            ],
            pointers: [
              NeedlePointer(
                value: imc,
                enableAnimation: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
