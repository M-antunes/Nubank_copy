import 'package:flutter/material.dart';

class DrawRoundContainer extends StatelessWidget {
  final Color color;
  final double size;
  final double padding;
  const DrawRoundContainer({
    Key? key,
    required this.color,
    required this.size,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(padding),
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: color));
  }
}
