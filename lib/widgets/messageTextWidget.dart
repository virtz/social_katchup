

import 'package:flutter/material.dart';

class MessageTextWidget extends StatelessWidget {
  const MessageTextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: size.width - 200,
      // height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
            color: Colors.white,
            height: 40,
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ))),
      ),
    );
  }
}