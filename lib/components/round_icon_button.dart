import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPress;
  const RoundIconButton({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        constraints: const BoxConstraints.tightFor(width: 56, height: 56),
        onPressed: onPress,
        elevation: 6,
        shape: const CircleBorder(),
        fillColor: buttonColor,
        child: Icon(icon));
  }
}
