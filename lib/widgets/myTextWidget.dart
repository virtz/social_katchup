

import 'package:flutter/material.dart';
import 'package:social_katchup/utils/myTextStyle.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
    this.onPressed, this.firstText, this.secondText,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: RichText(
        text: TextSpan(
            text: firstText,
            style: myStyle(color: Colors.grey, fontSize: 14.0),
            children: <TextSpan>[
              TextSpan(
                  text: secondText,
                  style: myStyle(color: Theme.of(context).primaryColor))
            ]),
      ),
    );
  }
}