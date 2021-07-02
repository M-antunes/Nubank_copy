import 'package:flutter/material.dart';

class AppbarButtonWidget extends StatelessWidget {
  final IconData icon;

  const AppbarButtonWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(right: 25),
      iconSize: 32,
      icon: Icon(icon),
      color: Colors.white,
      onPressed: () {},
    );
  }
}
