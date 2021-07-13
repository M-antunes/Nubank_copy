import 'package:flutter/material.dart';

import 'package:nubank_copy/shared/themes/app_colors.dart';

class NavigatorGreyButtonWidget extends StatelessWidget {
  final Widget navigator;
  final IconData icon;
  final bool hasWhiteColor;
  const NavigatorGreyButtonWidget({
    Key? key,
    required this.navigator,
    required this.icon,
    this.hasWhiteColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 1,
      iconSize: 30,
      icon: Icon(icon),
      color: hasWhiteColor == true ? AppColors.secondary : AppColors.greyLetter,
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
