import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_nutrition/controllers/home_controller.dart';
import 'package:imc_nutrition/widgets/gauge_widget.dart';
import 'package:imc_nutrition/widgets/input_height_widget.dart';
import 'package:imc_nutrition/widgets/input_weight_widget.dart';
import 'package:brasil_fields/brasil_fields.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final weightEc = TextEditingController();
  final heightEc = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: homeController,
      builder: (_, __) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: homeController.returnColor(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Calculadora de IMC',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InputHeightWidget(
                            controller: heightEc,
                            inputFormatter: [
                              FilteringTextInputFormatter.digitsOnly,
                              AlturaInputFormatter()
                            ],
                            validador: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Height is required';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InputWeightWidget(
                            inputFormatter: [
                              FilteringTextInputFormatter.digitsOnly,
                              PesoInputFormatter()
                            ],
                            controller: weightEc,
                            validador: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Weight is required';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 52),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: [
                    GaugeWidget(imc: homeController.imc),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(300, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          var formValid =
                              formKey.currentState?.validate() ?? false;

                          if (formValid) {
                            double peso = double.parse(
                                weightEc.text.replaceAll(',', '.'));
                            double altura = double.parse(
                                heightEc.text.replaceAll(',', '.'));
                            homeController.calcImc(peso: peso, altura: altura);
                          }
                        },
                        child: const Text('Calcular IMC'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                        color: homeController.returnColor() ?? Colors.black),
                    Text(
                      homeController.returnText() ?? '',
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'imc: ${homeController.imc.toStringAsFixed(1)}',
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    weightEc.dispose();
    heightEc.dispose();

    super.dispose();
  }
}
