import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const NavigationBarWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[400],
      width: 100,
      height: 100,
      child: Column(
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}
