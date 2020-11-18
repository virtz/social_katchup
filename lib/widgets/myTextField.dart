import 'package:flutter/material.dart';
import 'package:social_katchup/utils/myTextStyle.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key key,
    @required this.size,
    @required this.labelText,
    this.hintText,
    this.controller,
    this.suffix,
    this.obscureText,
    this.enableSuggestions,
    this.autoValidate,
    this.onsaved,
    this.validator, this.onChanged,
  }) : super(key: key);

  final Size size;
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final Widget suffix;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autoValidate;
  final void Function(String) onChanged;
  final void Function(String) onsaved;
  final void Function(String) validator;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        child: TextFormField(
          onChanged: onChanged,
          style: myStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          obscureText: obscureText,
          onSaved: onsaved,
          validator: validator,
          enableSuggestions: enableSuggestions,
          autovalidate: autoValidate,
          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: myStyle(fontSize: 13.0, color: Colors.grey),
              hintText: hintText,
              suffix: suffix,
              suffixIconConstraints: BoxConstraints(maxWidth: 20)),
        ));
  }
}
