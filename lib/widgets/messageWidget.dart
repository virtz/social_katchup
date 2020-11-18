import 'package:flutter/material.dart';
import 'package:social_katchup/utils/myTextStyle.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key key,
    @required this.size,
    this.content,
    this.color,
    this.alignment, this.textColor,
  }) : super(key: key);

  final Size size;
  final String content;
  final color;
  final alignment;
  final textColor;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: alignment,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Container(
              constraints: BoxConstraints(
                minWidth: size.width * 0.5,
                maxWidth: size.width * 0.75,
              ),
              color: color,
              // width: size.width - 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(content, style: myStyle(fontSize: 14.0,color: textColor)),
              )),
        ));
  }
}
