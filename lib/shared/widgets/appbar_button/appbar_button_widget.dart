import 'package:flutter/material.dart';
import 'package:nubank_copy/shared/themes/app_colors.dart';

class AppbarButtonWidget extends StatelessWidget {
  final IconData icon;

  const AppbarButtonWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(5),
      color: AppColors.navigationBarButton,
      shape: CircleBorder(),
      onPressed: () {},
      child: IconButton(
        splashRadius: 1,
        iconSize: 30,
        icon: Icon(icon),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
