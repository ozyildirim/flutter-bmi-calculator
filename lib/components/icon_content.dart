import 'package:flutter/material.dart';
import '.././constants.dart';

class iconCardWidget extends StatelessWidget {
  const iconCardWidget({Key key, this.icon, this.text}) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
