import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  //  ResultsPage({@required this.brain});
//
//  final CalculatorBrain brain;

//  ResultsPage(
//      {@required this.bmiResult,
//      @required this.resultText,
//      @required this.interpretation});
//
//  final String bmiResult;
//  final String resultText;
//  final String interpretation;

  @override
  Widget build(BuildContext context) {
    CalculatorBrain brain = ModalRoute.of(context).settings.arguments;

    //brain.calculateBMI();

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Result', style: kTitleTextStyle),
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(brain.category, style: kResultTextStyle),
                  Text(brain.bmi, style: kBmiTextStyle),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(brain.description,
                        style: kBodyTextStyle, textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
