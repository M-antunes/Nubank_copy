import 'package:flutter/material.dart';

class AppbarButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color buttonColor;
  final bool hasShape;

  const AppbarButtonWidget({
    Key? key,
    required this.icon,
    required this.color,
    required this.buttonColor,
    this.hasShape = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasShape == true) {
      return MaterialButton(
        padding: EdgeInsets.all(5),
        color: buttonColor,
        shape: CircleBorder(),
        onPressed: () {},
        child: IconButton(
          splashRadius: 1,
          iconSize: 28,
          icon: Icon(icon),
          color: color,
          onPressed: () {},
        ),
      );
    } else {
      return IconButton(
        splashRadius: 1,
        iconSize: 34,
        icon: Icon(icon),
        color: color,
        onPressed: () {},
      );
    }
  }
}
