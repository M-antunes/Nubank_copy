import 'package:flutter/material.dart';

class DescribeText extends StatelessWidget {
  final String text;
  final String textNumber;
  final TextStyle numberStyle;
  final TextStyle style;
  const DescribeText({
    Key? key,
    required this.text,
    required this.textNumber,
    required this.numberStyle,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text.rich(
          TextSpan(
            text: text,
            style: style,
            children: [TextSpan(text: textNumber, style: numberStyle)],
          ),
        ),
      ),
    );
  }
}

class DescribeText2 extends StatelessWidget {
  final String text;
  final String textNumber;
  final TextStyle numberStyle;
  final TextStyle style;
  const DescribeText2({
    Key? key,
    required this.text,
    required this.textNumber,
    required this.numberStyle,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              textNumber,
              style: numberStyle,
            )),
        Text(text, style: style),
      ]),
    );
  }
}
