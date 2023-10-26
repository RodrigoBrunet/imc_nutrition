import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_nutrition/controllers/home_controller.dart';
import 'package:imc_nutrition/widgets/gauge_widget.dart';
import 'package:imc_nutrition/widgets/input_data_widget.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:imc_nutrition/widgets/list_text_imc_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final weightEc = TextEditingController();
  final heightEc = TextEditingController();
  final genderEc = TextEditingController();
  final ageEc = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: homeController,
      builder: (_, __) => Scaffold(
        backgroundColor: Colors.white.withOpacity(0.8),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: homeController.returnColor(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InputDataWidget(
                            labelText: 'Height',
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
                          InputDataWidget(
                            labelText: 'Weight',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 170,
                            child: DropdownButtonFormField(
                              items: dropDownTipicalIndicesItems,
                              onChanged: (_) {},
                              validator: (double? value) {
                                if (value == null || value < 0) {
                                  return 'Gender is required';
                                }
                                return null;
                              },
                            ),
                          ),
                          InputDataWidget(
                            maxLenght: 2,
                            controller: ageEc,
                            validador: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Age is required';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(400, 50),
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
                              homeController.calcImc(
                                  peso: peso, altura: altura);
                            }
                          },
                          child: const Text('Calcular IMC'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GaugeWidget(imc: homeController.imc),
              Center(
                child: Text(
                  'IMC = ${homeController.imc.toStringAsFixed(1)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const ListTextImcWidget(),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<double>> get dropDownTipicalIndicesItems {
    List<DropdownMenuItem<double>> itens = [
      const DropdownMenuItem(value: 1, child: Text("Male")),
      const DropdownMenuItem(value: 2, child: Text("Female")),
    ];
    return itens;
  }

  @override
  void dispose() {
    weightEc.dispose();
    heightEc.dispose();

    super.dispose();
  }
}
