import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'input_page.dart';

int result = 25;

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, this.interpretation, this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(25),
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Text(
                    "Your Result",
                    style: pageLabelTextStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: resultNumberStyle,
                  ),
                  Center(
                    child: Text(
                      interpretation,
                      style: bottomTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: bottomButton(
                buttonTitle: "RE-CALCULATE",
                onTap: () {
                  Navigator.pop(context);
                },
              ))
        ],
      ),
    );
  }
}

// Container(
// child: Center(
// child: Text("RE-CALCULATE", style: kLargeButtonTextStyle),
// ),
// color: kBottomCardColor,
// height: kBottomContainerHeight,
// margin: EdgeInsets.only(top: 10),
// ),
