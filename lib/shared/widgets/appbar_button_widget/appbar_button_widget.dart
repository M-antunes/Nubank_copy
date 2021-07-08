import 'package:flutter/material.dart';
import 'package:nubank_copy/Modules/home/home_page.dart';
import 'package:nubank_copy/Modules/pix_area_page/pix_area_page.dart';
import 'package:nubank_copy/Modules/settings_page/settings_page.dart';

class AppbarButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color buttonColor;
  final bool hasShape;
  final bool hasQrCode;
  final bool hasCloseButton;

  const AppbarButtonWidget({
    Key? key,
    required this.icon,
    required this.color,
    required this.buttonColor,
    this.hasShape = true,
    this.hasQrCode = false,
    this.hasCloseButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasShape == true) {
      return MaterialButton(
        padding: EdgeInsets.all(15),
        color: buttonColor,
        shape: CircleBorder(),
        onPressed: () {
          if (hasCloseButton == false) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsPage(),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          }
        },
        child: Icon(
          icon,
          color: color,
          size: 28,
        ),
      );
    }

    return IconButton(
      splashRadius: 1,
      iconSize: 34,
      icon: Icon(icon),
      color: color,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: hasQrCode == false
                ? (context) => HomePage()
                : (context) => PixAreaPage(),
          ),
        );
      },
    );
  }
}
