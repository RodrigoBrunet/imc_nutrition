import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Icon?> thumbIcon =
        MaterialStateProperty.resolveWith<Icon?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.female);
      }
      return const Icon(Icons.male);
    });

    return Switch(
      thumbIcon: thumbIcon,
      value: true,
      onChanged: (value) {},
    );
  }
}
