import 'package:flutter/material.dart';
import '../constants.dart';

class bottomButton extends StatelessWidget {
  bottomButton({this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: kBottomCardColor,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
