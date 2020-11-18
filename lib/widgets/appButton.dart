

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key key,
    this.elevation,
    // this.shape,
    this.onPressed,
    // this.color,
     this.child,
  }) : super(key: key);
  final double elevation;
  // final ShapeBorder shape;
  final VoidCallback onPressed;
  // final color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        // height:53,
      disabledColor:Colors.pink.withAlpha(50),
        elevation: elevation,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        height: ScreenUtil().setHeight(53),
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        child:child);
  }
}