import 'package:flutter/material.dart';

class TextModel extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double size;
 final Color color;
 const   TextModel(
      {Key? key,
      required this.text,
      required this.fontFamily,
      required this.size,
      this.color=Colors.white,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        color: color,
      ),
    );
  }
}
