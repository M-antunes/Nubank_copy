import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';

class NavigatorGreyButtonWidget extends StatelessWidget {
  final Widget navigator;
  final IconData icon;
  const NavigatorGreyButtonWidget({
    Key? key,
    required this.navigator,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 1,
      iconSize: 30,
      icon: Icon(icon),
      color: AppColors.greyLetter,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigator,
          ),
        );
      },
    );
  }
}
