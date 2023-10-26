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
                end: 18.5,
                label: 'Magreza',
              ),
              GaugeRangeWidget(
                color: Colors.green,
                start: 18.5,
                end: 24.5,
                label: 'Normal',
              ),
              GaugeRangeWidget(
                color: Colors.yellow.shade400,
                start: 24.5,
                end: 30.5,
                label: 'Sobrepeso',
              ),
              GaugeRangeWidget(
                color: Colors.red.shade300,
                start: 30.5,
                end: 39.5,
                label: 'Obesidade',
              ),
              GaugeRangeWidget(
                color: Colors.red.shade900,
                start: 39.5,
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
