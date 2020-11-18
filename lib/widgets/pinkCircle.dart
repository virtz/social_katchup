

import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({
    Key key,
    @required this.size,
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.height,
    this.width,
  }) : super(key: key);

  final Size size;
  final double left;
  final double right;
  final double top;
  final double bottom;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        //  top:0.0,
        left: left,
        //  right:150,
        bottom: bottom,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFFEF5D84),
                Color(0xFFF0638B),
                Color(0xFFEE567D),
                Color(0xFFEB4A70),
                Color(0xFFE9446A),
                Colors.pink
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            // color: Colors.pink
          ),
        ));
  }
}
