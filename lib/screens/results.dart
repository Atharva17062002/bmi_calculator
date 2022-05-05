import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card1.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card1.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  double bmi = 28.4;

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kTitleResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard1(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                      bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBMIbodyStyle,
                  )
                ],
              ),
            ),
          ),
          GestureDetec(
              title: 'RE-CALCULATE',
              onTap: (){
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
