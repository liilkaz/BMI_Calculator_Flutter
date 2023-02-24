import 'package:flutter/material.dart';

import '../constants.dart';

class GenderContent extends StatelessWidget {
  final String text;
  final IconData icon;
  const GenderContent({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        const SizedBox(height: 15),
        Text(
          text,
          style: labelTextStyle,
        )
      ],
    );
  }
}
