import 'package:flutter/material.dart';

class AppbarButtonWidget extends StatelessWidget {
  final IconData icon;

  const AppbarButtonWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: Color(0xffA74EC7), style: BorderStyle.none),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: IconButton(
          splashRadius: 1,
          iconSize: 32,
          icon: Icon(icon),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
