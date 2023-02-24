import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function() onPress;
  const BottomButton({
    required this.text,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: bottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(child: Text(text, style: buttonTextStyle)),
      ),
    );
  }
}
