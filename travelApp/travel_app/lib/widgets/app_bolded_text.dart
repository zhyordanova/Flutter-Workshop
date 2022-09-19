import 'package:flutter/material.dart';

class AppBoldedText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final double? letterSpacing;
  final FontWeight? weight;
  final TextOverflow? textOverflow;
  final int? maxLinesAllowed;

  const AppBoldedText({
    Key? key,
    this.size = 30,
    required this.text,
    this.color = Colors.black,
    this.letterSpacing,
    this.weight = FontWeight.bold,
    this.textOverflow,
    this.maxLinesAllowed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLinesAllowed,
      style: TextStyle(
        fontSize: size,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: weight,
        overflow: textOverflow,
      ),
    );
  }
}
