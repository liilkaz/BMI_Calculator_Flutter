import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String description;

  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Your Result',
              style: titleTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: activeCardColor,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: resultTextStyle,
                      ),
                      Text(bmiResult, style: bmiTextStyle),
                      Text(description,
                          textAlign: TextAlign.center,
                          style: descriptionTextStyle),
                    ]),
              )),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
